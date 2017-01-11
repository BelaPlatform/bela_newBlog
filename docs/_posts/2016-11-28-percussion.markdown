---
layout: post
title: "Making a percussion instrument with Bela"
date: 2017-01-11
categories:
  - Hardware
  - Synths
  - Instruments
description: "Making a low latency percussion instrument with ceramic tiles, piezo disks, and Bela"
image: percussion-instrument.jpg
author: robert
---

In this post we'll discuss building percussion instruments with Bela. Bela is a great platform for making self-contained digital musical instruments and particularly well suited to percussion instruments due the low levels of action-sound latency that can be achieved with the platform. Latency (the delay between hitting an instrument and hearing it) is a big issue when it comes to digital percussion instruments and, as any drummer will know, it can be quite distracting when you are trying to play rhythmically complex music. 

The percussion instrument we have made detects strikes using piezo elements connected to the eight analog inputs on the Bela board. This can give us very low latency (around 1ms) making the instrument feel like it's responding right under your fingertips. We wanted a nice hard playing surface for this instrument and so decided to make the control interface from eight ceramic tiles of different sizes. Each of the tiles has a piezo element attached to the back to detect vibrations in the tile which then triggers the playback of a sample. Here's a video of us testing the first prototype:

{% include youtube.html youtube="XejcHPECBUU" %}

## Piezo disks with Bela

Piezo disks generate a voltage when they are deformed and are great sensors for making drum triggers or detecting knocks or changes in pressure in solid objects. One way of connecting the piezo disks to Bela is to use a simple voltage biasing circuit using two equally valued resistors. The analog inputs on the Bela board have a voltage range of 0-4.096V. If we were to connect the piezo directly to the analog input we would end up clipping the negative part of the piezo signal (half-wave rectification). 

By using the voltage biasing circuit we realign the zero point of the piezo signal up to around 2V, which gives us enough headroom to read both the positive and negative part of the piezo signal. Here’s an image of the voltage divider circuit for three piezo disks: in our circuit we used two 2.2 MOhm resistors for each piezo disk.

{% include single-image.html fileName="percussion-fritzing.jpg" %}

## Signal conditioning

Once we have our signal coming in via the analog inputs we perform a peak detection routine on the signal to identify when a strike occurs on one of the tiles. To make this easier we first perform some signal conditioning and smoothing to the signal (DC offset filter, full wave rectification and a moving average filter). Once the signal is looking more uniform we then use a peak detection algorithm which detects strikes on each of the tiles by looking for a downward trend in the sensor data when the incoming value is above a minimum threshold. 

Once a peak is detected the amplitude of the strike is measured and then assigned to a sample appropriate to the tile. Our synthesis engine is capable of 40 different voices with an oldest-out voice stealing algorithm, to allow for fast repeated strikes if all voices became allocated. A single voice version of the code comes as an example with Bela: [examples/04-Audio/sample-piezo-trigger](https://github.com/BelaPlatform/Bela/tree/master/examples/04-Audio).

This was all written in C++ using the browser-based IDE. The scope was an invaluable feature for debugging. When conditioning the signal we were able to watch the raw input signal simultaneously with a filtered version of itself and also to visualise the exact moment when a note was triggered, all from the browser.

Here's a short video the second prototype instrument being played:

{% include youtube.html youtube="be8dB2JmQl4" %}
