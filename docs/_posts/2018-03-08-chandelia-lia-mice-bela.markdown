---
layout: post
title: "ChandeLIA: sound, light and brass by Lia Mice"
date: 2018-03-08
categories:
  - "Instruments"
  - "Hardware"
  - "Projects"
  - "Installations"
description: "ChandeLIA: sound, light and brass by Lia Mice"
image: lia-mice/chandelia.png
author: bela
---

The ChandeLIA is a suspended musical instrument created by [Lia Mice](https://www.liamice.com) that transforms a chandelier into an audio-visual performance instrument.

{% include vimeo.html vimeo="247490374" %}

## Performing with sound, light and brass

The performer creates a tone by striking or tapping the ChandeLIA (using their hand or a ChandeLIA baton), and can make changes to the tone, such as microtonal pitch shifts and adjustments to audio effects, by swinging, tilting and spinning the ChandeLIA. The instrument was designed to sound like a mixture of the organic bell-like sound of tapping on the metal chandelier, and the sound of electricity powering the lights. 


{% include single-image.html fileName="lia-mice/tap-it.png" %}

## How it works

Embedded in the central shaft of the ChandeLIA are a piezo disc and an [Adafruit BNO055 absolute orientation sensor](https://learn.adafruit.com/adafruit-bno055-absolute-orientation-sensor/overview). These sensors are connected to a Bela board which processes the sensor data to determine when to output a tone, as well as the sonic properties of the tone, and when to flash the LED lights. The audio output of Bela is connected to a set of speakers for the performer and audience to hear the instrument.

{% include single-image.html fileName="lia-mice/block-diagram.png" %}

## Hardware

The piezo disc is the chosen sensor for detecting striking/tapping gestures because when embedded at the base of the central shaft of The ChandeLIA it is sensitive enough to detect striking/tapping gestures performed all over the instrument - including on the instrument’s body, arms, light fixtures, light bulbs and support chain. The vibrations captured by the piezo disc are sent straight to Bela's audio input.

The [BNO055 breakout board](https://learn.adafruit.com/adafruit-bno055-absolute-orientation-sensor/overview) is an Inertial Measurement Unit (IMU) used for movement sensing. It features an accelerometer, magnetometer and gyroscope, and combines the data of these three sensors into actual three dimensional space orientation. It is the chosen component for sensing movement of the chandelier (such as swinging, tilting and spinning) as it can offer readings pertaining to the X, Y and Z axis locations of the chandelier. This three dimensional space orientation data is read by the Bela board using I2C and is then used to affect the sound the instrument is making.

Bela was chosen as it can act as both the processor and micro-controller, and because it has ultra-low latency for audio and sensors, which allows the performer and audience to feel as though the sound and all its effects are truly created by the performer interacting with the instrument.


{% include single-image.html fileName="lia-mice/circuit-diagram.png" %}

## Sound design

The sound design of the instrument was intended to sound like a mixture of the organic bell-like sounds created by tapping on the metal chandelier, and the sound of electricity powering the lights. The sound design was realised by using the audio signal captured by the piezo disc to excite a Karplus-Strong algorithm that models the sound of a string vibrating. The electric sound was created by using sending additional synthesised signals into the alogrithm.

Some parameters of the modelling are affected by the sensor readings collected by the BNO055 IMU. The sound of the instrument is further processed by audio effects including chorus and delay, the parameters of which are also controlled by readings collected by the BNO055. The result is an electric droning sound when The ChandeLIA is hanging, but when turned upside down the droning ceases and the instrument is able to be performed as a more bell-like instrument with a fast decay after each strike.

{% include single-image.html fileName="lia-mice/chandelia.png" %}

[Lia Mice](https://www.liamice.com) is a producer, DJ, multi-instrumentalist, live performer and instrument designer. She is currently producing her third LP and completing a PhD in [Media and Arts Technology](http://www.mat.qmul.ac.uk/) at Queen Mary University of London. Thanks to Lia for sharing this great project with us.