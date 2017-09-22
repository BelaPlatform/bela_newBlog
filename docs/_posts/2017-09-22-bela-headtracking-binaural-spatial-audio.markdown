---
layout: post
title: "Interactive Spatial Audio Workshop"
date: 2017-09-22
categories:
  - Tutorials
  - Workshops
  - Events
description: "Headtracking Binaural Audio with Bela"
image: binaural/Soundstack_2017-7.jpg
author: bela
---
 
The first [Soundstack workshop](http://www.eecs.qmul.ac.uk/~rebeccas/events/soundstack2017/) on interactive spatial audio.

{% include single-image.html fileName="binaural/Soundstack_2017-2.jpg" %}

In September 2017 the first Soundstack workshop for spatial audio took place at Queen Mary University of London. The day-long event was organised by Angela McArthur and Becky Stewart from the [Centre for Digital Music](http://c4dm.eecs.qmul.ac.uk/) and brought together some of the best minds from the field of spatial audio. Throughout the day there were numerous sessions that covered various techniques, workflows and theories of spatial audio production. These were presented by [Becky Stewart](http://theleadingzero.com/), who runs the Real Time Digital Signal Processing module at QMUL, and [Enda Bates](http://www.endabates.net/) from Trinity College Dublin. Topics covered included binaural and multichannel audio, the cutting edge of 3D sound, as well as spatial audio for interactive applications, VR, AR, installations and performance work.

{% include single-image.html fileName="binaural/Soundstack_2017-4.jpg" %}

The afternoon featured a hands-on session that introduced participants to the Bela platform and discussed the potential for using the platform as part of an interactive spatial audio system. Bela was used to create wearable spatial audio headsets with real-time head-tracking using a 9 DOF [absolute orientation sensor](https://learn.adafruit.com/adafruit-bno055-absolute-orientation-sensor/overview) and Pure Data running on the board. The sensor consists of an accelerometer, magnetometer and gyroscope on a single board. On the [Adafruit breakout board](https://learn.adafruit.com/adafruit-bno055-absolute-orientation-sensor/overview) that was used during this workshop there is also a high speed ARM Cortex-M0 based processor which gathers all the sensor data and does the sensor fusion required to get some meaningful data about the absolute orientation of the board. If you are interested in looking at the code from the workshop you can find it on [Becky's github repo](https://github.com/theleadingzero/belaonurhead).

{% include single-image.html fileName="binaural/bela-on-ur-head.jpg" caption="The absolute orientation sensor mounted on a pair of headphones and connected to Bela via I2C."%}

This is just the beginning of an investigation into the possibilities of using the low latency capabilities of Bela for spatial audio. The next step is get an ambisonics to binaural decoder running on Bela to be used in combination with the real-time sensor feeds. This intial workshop was a great success with 50 people applying to attend the 16-place workshop. People from as far afield as Edinburgh, Bristol and Spain attended – looking forward to next year!

If you're running any events with Bela that you'd like to share on our blog get in touch with us via [Facebook](https://www.facebook.com/belaPlatform/), [Twitter](https://twitter.com/BelaPlatform) or our [Forum](http://forum.bela.io/).