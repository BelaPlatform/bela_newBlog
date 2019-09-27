---
layout: post
title: "Euro-Trill: Touch Sensing for Modular Synthesisers"
date: 2019-09-27
categories:
- "Trill"
- "Projects"
- "Hardware"
- "Instruments"
- "Synths"
description: "Euro-Trill: Touch Sensing for Modular Synthesisers"
image: euro-trill/header.JPG
author: bela
hidden: true
---

[Trill Touch Sensors](https://www.kickstarter.com/projects/423153472/trill-touch-sensing-for-makers) are the perfect tools for building synthesisers and electronic musical instruments. In this post we'll have a close look at a synth module we've created with Trill that works alongside our DIY Eurorack module [Pepper](https://github.com/BelaPlatform/bela-pepper/wiki).

# Euro-Trill in Action

{% include youtube.html youtube="lsTCIzxxa18" %}

# Working with the Trill Sensors

At the core of this synthesiser are the [Trill Touch Sensors](https://www.kickstarter.com/projects/423153472/trill-touch-sensing-for-makers) that are the latest maker tool from us at Bela and are live on Kickstarter until the 18th of October 2019. There are three types of Trill sensor used in this module: **Trill Bar**, **Trill Square** and **Trill Craft**.

{% include single-image.html fileName="euro-trill/euro-trill-labelled.jpg" %}

## Producing Control Voltage from the Trill Sensors

The Trill sensors alone cannot produce a control voltage and need to be connected to a microcontroller or embedded computer to translate the readings from the sensor into the required voltage ranges. To do this you can use a low cost microcontroller like Arduino, Teensy or many other popular maker boards so long as they have an i2c port available (see the [Trill Arduino examples](https://github.com/BelaPlatform/Trill/tree/master/examples)). In this example we've used a more sophisticated embedded computer that can also do complex synthesis of sound alongside producing control voltage out.

{% include single-image.html fileName="euro-trill/pepper-all-around.jpg" caption="The Pepper Eurorack Module."%}


In Euro-Trill we connected the Trill sensors to our [Pepper module](https://github.com/BelaPlatform/bela-pepper/wiki).
Pepper is a DIY Eurorack module for integrating Bela with modular synthesisers. It's a programmable module that can be used for manipulating and generating both control voltage and audio signals.
Pepper offers 8 CV inputs (attenuated by the pots), 8 CV outputs, stereo audio input, stereo audio output, two buttons and a 10-bar LED display. All of this can be programmed using a variety of different languages (c/c++, Pure Data, SuperCollider, Csound, FAUST) from within the Bela environment.

{% include single-image.html fileName="euro-trill/pepper-side-money-shot.jpg" %}

To connect the Trill sensors to Pepper we use [i2c](https://learn.sparkfun.com/tutorials/i2c/all), a digital communication protocol that requires only two connections in addition to power and ground: SCL (clock) and SDA (data). On the Pepper module these four pins are broken out on the back of the PCB for exactly these kind of situations.

## Using Multiple Trill Sensors at once

To use multiple Trill sensors at the same time you just need to make sure that each sensor has a unique i2c address. The i2c address of each sensor can be changed via the solder bridges on the back of each sensor.

{% include single-image.html fileName="euro-trill/changing-i2c-address.jpg" caption="Changing the i2c address of the Trill sensor via the solder bridges on the back." %}

Once each of the sensors has an individual address they can be connected together by simply daisy-chaining the SDA and SCL cables together. To make the module more durable and road-friendly we created a simple break-out using protoboard that connects all of the wires together.


# Mapping Touch Sensing to Sound Synthesis

The code for this instrument was written in c++ and has two main components: a pattern generator that triggers samples and generates cv triggers, and a seven voice subtractive synthesiser with two square wave oscillators per voice that can be detuned from each other and pass through a resonant low pass filter.

## Trill Bar for Pattern Control

**Trill Bar** is a multitouch slider that can sense up to five touch points. Each of the three Trill Bar sensors in the synthesiser have a pre-defined 16-step pattern assigned to them. Touches on the sensors control the start and end point of that sequence which are played back in synchrony with a master clock that is received through Pepper's first cv input.

{% include single-image.html fileName="euro-trill/trill-bar-close-up.jpg" caption="Trill Bar: multitouch slider for pattern control." %}

The patterns are used to trigger samples that are played back from the first channel of audio output. Triggers are also generated from the CV outputs of Pepper. The LEDs on Pepper give feedback of the position in the pattern and flash in time with the triggers.

## Trill Craft for Brass Keyboard

Trill Craft is a 30-channel capacitive sensing breakout board that lets you make your own touch interfaces out of anything conductive. In this case it is used to turn seven pieces of brass into a custom keyboard. This only uses 7 of the 30 channels available on Trill Craft so much more sophisticated interfaces are possible.

{% include single-image.html fileName="euro-trill/trill-craft-close-up.jpg" caption="Trill Craft: turn anything conductive into a sensor with 30 individual channels." %}

The synthesiser is based on two square wave oscillators that can be detuned one from the other. There are seven independent voices that are each controlled by touches on the brass keyboard.
The attack and decay of the envelope that is applied to the oscillator is controlled by two of the potentiometers on Pepper as is the overall detune amount. The audio from the synthesiser comes out of the second audio output on Pepper.

## Trill Square for Modulation of Synthesis Parameters

Trill Square is a touch pad that senses two axes of movement that we use to control the detuning of the two oscillators of the synthesiser on one axis, and the cutoff and Q of the filter on the other axis.

{% include single-image.html fileName="euro-trill/trill-square-close-up.jpg" caption="Trill Square: x-y sensing for controlling synthesis parameters." %}

This synthesiser serves to demonstrate some of the possibilities that the Trill touch sensors can open up for the development of Eurorack modules, standalone electronic instruments and sound producing machines in general. They provide an really intuitive and responsive form of control for digital synthesisers and offer plenty of opportunities for experimenting with free-form interfaces and control surfaces.

# Visit Trill on Kickstarter

The Trill touch sensors are now [live on Kickstarter](https://www.kickstarter.com/projects/423153472/trill-touch-sensing-for-makers)! This new family of sensors from Bela bring precise and easy-to-use touch interaction to your digital projects.

{% include youtube.html youtube="xzaf2bBKuQI" %}

<div style="text-align: center; margin-bottom: 10px;"><a href="https://www.kickstarter.com/projects/423153472/trill-touch-sensing-for-makers" name="Trill on Kickstarter"><button name="button" style="font-size: larger; font-weight: bold; cursor: pointer; color: #ffffff; padding: 30px; background-color: #00bea4; border-radius: 15px; border: 4px #00bea4;">See our Rewards on Kickstarter</button></a></div>

The campaign runs until 5pm 18th October so don't miss your chance to get your hands on this new family of touch sensors for makers. See you on Kickstarter and stay tuned for updates!
