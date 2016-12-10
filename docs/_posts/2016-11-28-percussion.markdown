---
layout: post
title: "Making a percussion instrument with Bela"
date: 2016-11-28
categories:
  - Hardware
  - Synths
  - Instruments
description: "Making a low latency percussion instrument with ceramic tiles, piezo disks, and Bela"
image: percussion-instrument.jpg
author: robert
---

Building a low latency percussion instrument with ceramic tiles, piezo disks, and Bela

In this post we're looking at building percussion instruments with Bela. Latency is a pretty big issue when it comes to percussion instruments and, as any percusssionist will know, it can be quite distracting when playing rhythmically complex music. The percussion instrument we made uses the eight analog inputs on the Bela board which give us very low latency. We decided to make the control interface of the instrument from eight ceramic tiles, each with a piezo element attached to the back. Striking the tiles triggers samples, all with a latency of less than 1ms!

Here's a video of us testing the first prototype:

{% include youtube.html youtube="XejcHPECBUU" %}

Piezo disks generate a voltage when they are deformed and are great sensors for making drum triggers or detecting knocks or changes in pressure in solid objects. One way of connecting the piezo disks to Bela is to use a simple voltage divider circuit using two equally valued resistors. The analog inputs on the Bela board have a voltage range of 0-4.096V. If we were to connect the piezo directly to the analog input we would end up clipping the negative part of the piezo signal (half-wave rectification). By using the voltage divider we realign the zero point of the piezo signal up to around 2V, which gives us enough headroom to read both the positive and negative part of the piezo signal. Here’s an image of the voltage divider circuit for three piezo disks: in our circuit we used a 2 x 2.2 MOhm resistors for each piezo disk.

{% include single-image.html fileName="percussion-fritzing.jpg" %}

Once we have our signal coming in via the analog inputs we perform a peak detection routine on the signal to identify when a strike occurs on one of the tiles. To make this easier we first performed some signal conditioning and smoothing to the siganl (DC offset filter, full wave rectification and a moving average filter). One the signal is looking more uniform we then use a peak detection algorithm which detects strikes on each of the tiles by looking for a downward trend in the sensor data when the incoming value is above a minimum threshold. Once a peak is detected the amplitude of the strike is measured and then assigned to a sample appropriate to the tile. Our synthesis engine was capable of 40 different voices with an oldest-out voice stealing algorithm if all voices became allocated to allow for fast repeated strikes. A single voice version of the code comes as an example with Bela: [example/Audio/sample-piezo-trigger](https://github.com/BelaPlatform/Bela/tree/master/examples/04-Audio).

This was all written in C++ using the browser-based IDE. The scope was an invaluable feature for debugging. When conditioning the signal we were able to watch the raw input signal simultaneously with a filtered version of itself and also to visualise the exact moment that a note was triggered, all in the browser.

Here's a photo of the second prototype instrument:

{% include single-image.html fileName="percussion-instrument.jpg" %}
