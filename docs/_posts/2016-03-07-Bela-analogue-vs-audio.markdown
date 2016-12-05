---
layout: post
title: "Bela: analogue vs audio"
date: 2016-11-28
categories:
  - "Hardware"
description: "Details on analogue and audio channels on Bela, with respect to timing, noise and aliasing performance"
image: analogue-audio.jpg
author: andrew
---
# Bela: analogue vs audio

We designed an Audio Expander Capelet which converts the analogue I/Os into extra audio inputs and outputs. With this capelet you will be able to have up to 6 total audio inputs and 6 outputs, all sampled together at 44.1kHz. Alternatively, you can go up to 10 inputs and 10 outputs, with 8 of those sampled at 22.05kHz.

## Summary: Advantages and Disadvantages

We discuss here the audio and analogue I/Os on the Bela cape in more depth, and examine the differences between them. To start with, the terms are a bit confusing: isn't audio already an analogue signal? If they are all 16 bits and sampled at the same rate, then why would you choose to use one type over the other?

All the details are below, but let's start with the brief summary. This table explains the specifications and relative merits of each type of input. In simplest terms, the audio I/Os give you better filtering against noise and aliasing at the cost of higher latency, while the analogue I/Os give you DC coupling and more flexibility with very low latency.


| | Bits | Sample Rate | Level | Coupling | Conversion Latency | Internal aliasing filter?
| ---- | ---------- | ----- | -------- | ----------------- | --------
| Audio In | 16 | 44.1kHz | +/-1V (gain available) | AC | 0.39ms | yes
| Audio Out | 16 | 44.1kHz | +/-1V (gain available) | AC | 0.47ms | yes
| Analogue In | 16 | 22.05kHz x 8, 44.1kHz x 4, 88.2kHz x 2 | 0-4.096V | DC | < 10us | no
| Analogue Out | 16 | 22.05kHz x 8, 44.1kHz x 4, 88.2kHz x 2 | 0-5V | DC | < 10us | no

The difference is that the audio I/Os are optimised specifically for the demands of audio, where the analogue I/Os are more general-purpose. The capelet will add the necessary circuitry to give you AC coupling and some filtering on the analogue I/Os, making those inputs and outputs usable as extra audio channels.

## What's on the Bela cape

The Bela cape has three chips that together handle the analogue and audio I/O. Let's look at each of them in turn.

The Analogue Ins use an [AD7699](http://www.analog.com/media/en/technical-documentation/data-sheets/AD7699.pdf) ADC from Analog Devices. This part provides 8 inputs at 16 bits each. It's what's known as a SAR (successive approximation register) type converter. More on that later.

The Analogue Outs use an [AD5668](http://www.analog.com/en/products/digital-to-analog-converters/da-converters/ad5668.html) DAC (digital-to-analogue converter) from Analog Devices. This part provides 8 outputs at 16 bits each. It is a string type converter. Again, more later.

The stereo Audio I/O uses a [TLV320AIC3104](http://www.ti.com/general/docs/lit/getliterature.tsp?genericPartNumber=tlv320aic3104&fileType=pdf) audio codec (coder-decoder) from Texas Instruments. Since audio is also a type of analogue signal, the codec contains within it an ADC and DAC for audio in and out, respectively. These provide 2 channels each at 16 bits*. Both ADC and DAC uses a sigma-delta type converter.

\* The codec is actually capable of 24-bit conversion, but Bela runs it at 16 bits which reduces the amount of data that needs to be exchanged between PRU and CPU. Limitations on noise floor mean that 24-bit conversion wouldn't make an audible difference anyway. A similar argument can be made for > 44kHz audio sample rates. [Click here](https://xiph.org/~xiphmont/demo/neil-young.html) for an interesting discussion of hi-res audio formats.

## Types of Converter

The sigma-delta converters used in the audio codec have quite different properties from the SAR ADC and the string DAC. Let's look at these types in turn (skip to the next section if you just want the practical results!).

* **SAR ADC**: a successive approximation register ADC converts an analogue signal to digital by making a series of progressively closer estimates of its value over a relatively short period of time (in this case, 2 microseconds or less per sample). In principle, samples can be requested on any channel at any time, though only one of the 8 inputs can be actively under conversion at a time. Bela automatically samples each of the 8 channels in round-robin fashion, for a total of 22.05k per channel * 8 channels = 176.4ksps (i.e. 176,000 samples per second).

The advantage of the SAR ADC is that it's very fast. The latency between requesting a conversion and getting the result is only a few microseconds. However, compared to sigma-delta parts, SAR ADCs are expensive (the AD7699 and AD5668 are by far the two most expensive parts on the Bela cape). There is also a subtle disadvantage in noise performance compared to sigma-delta conversion which we will explore below.

* **String DAC**: a string DAC is basically a long string of resistors all placed in series. To convert a digital signal into analogue, a digital switch selects a point along the string of resistors, which will produce the desired analogue voltage. This output is then buffered inside the chip so that it can drive an external load without weighing down the string of resistors and leading to inaccurate conversions.

The properties of the string DAC are very similar to the SAR ADC. Conversions can be requested on any channel at any time, and Bela sends signals to the DAC channels in round-robin fashion, at 22.05kHz per channel * 8 channels = 176.4ksps total. Like the SAR ADC, the conversion is very fast: the datasheet gives a typical settling time of 6 microseconds to within +/-2 LSB (least-significant bits) of its final value. Also like the SAR ADC, the string DAC is expensive and shares the same disadvantage in noise performance compared to the sigma-delta converter.

* **Sigma-Delta ADC/ADC**: sigma-delta modulation is a clever and mathematically complex process that allows surprisingly cheap and simple converters to achieve excellent performance using oversampling. Oversampling means that even if the audio is nominally sampled at 44.1kHz, the converter inside is actually running at many times that (128x for the codec on the Bela cape).

A detailed description on how sigma-delta modulation works is beyond the scope of this post, but [click here for a good explanation](https://www.maximintegrated.com/en/app-notes/index.mvp/id/1870). For our purposes, there are several properties we care about:

* **Constant sample rate**: where the other ADC and DAC could theoretically convert any signal at any time, sigma-delta audio conversion requires a constant sample rate to work properly. In practice, we are using constant sample rates for all the I/Os so this doesn't make too much difference.

* **Oversampling with noise shaping**: this is by far the biggest win of sigma-delta modulation. The actual converter in a sigma-delta design often has far fewer bits than advertised -- in fact it is typical to use a 1-bit converter! This would normally result in a large amount of quantisation noise (i.e. error from an imprecise estimate). Oversampling with dithering can help reduce this effect, but sigma-delta converters do better using a clever feedback strategy to push all the noise up into the very high frequency ranges, well away from the normal audio range. This makes the noise very easy to filter out.

These diagrams illustrate the effect. In reality, the oversampling is much higher than 4x.

{% include single-image.html fileName="bela-analogue-vs-audio/graph01.png" %}
{% include single-image.html fileName="bela-analogue-vs-audio/graph02.png" %}
{% include single-image.html fileName="bela-analogue-vs-audio/graph03.png" %}

The two sensors that we use in this project are the piezo disk and the accelerometer. In this case we're treating the piezo disk like a microphone and pluging it into the audio input of Bela. Piezo disks generate a voltage when they are deformed and so when they are attached to surfaces they can also translate vibrations on that surface into a voltage. It's for this reason that they are often used as the core element in contact microphones and hydrophones. In this case we are using one to detect strikes on the cardboard tube and using that (audio) signal to trigger an impact sound. It should be attached to the inside of the tube toward the far end (we used double sided velcro to do this).

{% include single-image.html fileName="saber_fritzing.jpg" %}
