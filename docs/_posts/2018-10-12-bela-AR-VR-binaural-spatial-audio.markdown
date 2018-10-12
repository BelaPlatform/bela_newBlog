---
layout: post
title: "Prototyping Spatial Audio for VR/AR with Bela Mini"
date: 2018-10-11
categories:
  - Tutorials
  - Workshops
  - Events
description: "Prototyping Spatial Audio for VR/AR with Bela Mini"
image: soundstack-2018/header.jpg
author: bela
---

In this post we discuss how Bela can be used to prototype immersive interactive audio scenes, the main topic of the Soundstack 2018 Bela Mini workshop led by Becky Stewart.

{% include single-image.html fileName="soundstack-2018/hot-bela-blue.jpg" %}


## Prototyping interactive spatial audio

Virtual and augmented reality is finally maturing as a technology and with this new medium comes the need for new tools and approaches to creating the immersive content. Being able to work with low-latency interactive audio is an important piece of this puzzle, particularly when it is spatialised in a virtual environment. 
Latency between a player's movements and the response of a virtual environment is a well-known problem in VR and AR: delays between action and reaction can degrade feelings of presence and immersion in a virtual world.
It is for these reasons that Bela is particularly well positioned for prototyping spatial audio interactions. 
By utilising a combination of low-latency head-tracking and binaural spatialisation it is possible to create extremely responsive interactive audio scenes that can be rapidly designed, played with and iterated upon. 


## Soundstack 2018

[Soundstack 2018](http://angelamcarthur.com/soundstack-2018/), which took place on the 5-7th Oct 2018, consisted of a three-day series of workshops & masterclasses on the art and technology of spatial audio. The event brought together a group of spatial audio researchers and content creators. The future of spatial audio was the overarching topic for the three days, from ambisonics to object-based audio, interactivity to synthesis. This is the second edition of Soundstack: for a summary of last year's event see our [blog post](https://blog.bela.io/2017/09/22/bela-headtracking-binaural-spatial-audio/).

{% include single-image.html fileName="soundstack-2018/dark-potentiometers.jpg" %}

This year the workshops and masterclasses covered a broad range of topics: spatial aesthetics led by [Call & Response](https://www.callandresponse.org.uk/), the [SPAT real-time spatial audio processor](https://forumnet.ircam.fr/product/spat-en/) led by Thibaut Carpentier from IRCAM, and integrating interactive sound assests in Unity using Pure Data and the [Heavy open source compiler](https://github.com/enzienaudio/hvcc) (which will be familiar to many of you) led by Christian Heinrichs.

## Bela, binaural spatialisation and head-tracking

Becky Stewart's workshop on the Saturday morning concentrated on using Bela as a tool for prototyping interactive binaural audio scenes. When working on virtual or augmented reality applications it is becoming increasing important to be able to quickly prototype, deploy, test and redesign the spatial sound elements you are working with. Becky demonstrated a workflow that uses [Pure Data and Bela](https://github.com/BelaPlatform/Bela/wiki/Running-Puredata-patches-on-Bela) in combination with a head-tracking sensor. [Pure Data](https://puredata.info/) is a widely-used computer music language that is high-level enough for composers and musicians to get creative with.

{% include double-image.html right="soundstack-2018/bela-imu-button_bb.png" left="soundstack-2018/pd-vbap.png" %}


The workshop used a 9 DOF [absolute orientation sensor](https://learn.adafruit.com/adafruit-bno055-absolute-orientation-sensor/overview) for head-tracking which was attached to the band of a pair of headphones. The sensor consists of an accelerometer, magnetometer and gyroscope on a single board. On the [Adafruit breakout board](https://learn.adafruit.com/adafruit-bno055-absolute-orientation-sensor/overview) that was used during this workshop there is also a high speed ARM Cortex-M0 based processor which gathers all the sensor data and does the sensor fusion required to get some meaningful data about the absolute orientation of the board (or whatever it is attached to).

{% include single-image.html fileName="soundstack-2018/dave-bela-head.jpg" %}

The result is an interactive binaural scene that is possible to explore by moving your head. The absolute orientation sensor keeps track of the position of your head and it is possible to fix sound sources in the room so they always seem to be propogating from the same point. All the material from the workshop is online so if you are interested in looking through the slides or trying out the example projects then you can find it all [here](https://github.com/theleadingzero/belaonurhead/wiki/Soundstack-2018-Workshop).
