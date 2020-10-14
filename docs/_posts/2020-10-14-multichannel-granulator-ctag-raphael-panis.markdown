---
layout: post
title: "Multichannel interactive granulator by Raphael Panis"
date: 2020-10-14
categories:
  - Instruments
  - Hardware
  - Synths
  - Software
description: "Multichannel interactive granulator by Raphael Panis"
image: granulator-panis/2_Rear.jpg
author: bela
---

French composer and music technologist Raphael Panis has created a multichannel synthesiser which serves as a test bed for electronic music. It can act as an eight channel granular synthesiser amongst other things. This instrument brings together the CTAG multichannel cape and Trill touch sensors for realtime control.

{% include youtube.html youtube="coU9tGAow_g" %}

# Microsounds

Raphael has been working closely with composers over the last year who wanted a way to bring electronic elements into their compositions. This was the initial inspiration for creating this multichannel granular synth – as a way of easily integrating multichannel electronic textures and experimenting with different synthesis techniques and effects without the need for a laptop.

{% include single-image.html fileName="granulator-panis/1_Front.jpg" %}

# The hardware

The aim was to create a hardware test bed for different types of synthesis in multichannel. The synth features a Bela board with the [CTAG multichannel cape](https://shop.bela.io/collections/ctag-multi-channel-audio-system/products/ctag-face-starter-kit) which gives 4 inputs and 8 outputs of high quality audio.

{% include single-image.html fileName="granulator-panis/3_Inside.jpg" %}

For the control interface there are 8 potentiometers connected to the analog inputs of Bela plus 3 [Trill sensors](https://shop.bela.io/collections/trill): 2 [Square](https://shop.bela.io/collections/trill/products/trill-square) and 1 [Bar](https://shop.bela.io/collections/trill/products/trill-bar).

# The software

The first test program which can be seen in the video at the top of this post is a granular synth which can generate up to 70 simultaneous grains.
The grains in the video are a simple sine tone going though an Attack-Decay envelope but could be replaced with live sampled sound. Each of the grains each can be sent to any of the 8 outputs with the spatialisation controlled in realtime.
The grain frequency is randomly distributed between a min and max value (controlled via two fingers on the Trill Bar which represent the min and max). The distribution can be either completely random, or distributed on the harmonics of the fundamental frequency.

{% include single-image.html fileName="granulator-panis/2_Rear.jpg" %}

You can find the full code [here](https://blog.bela.io/assets/images/granulator-panis/CODE.zip) which was written in C++ generated from FAUST.

# More to come

A further development of this idea is forthcoming towards the end of 2020. This version builds on a [Bela Mini](https://shop.bela.io/collections/bela-and-bela-mini/products/bela-mini-starter-kit) to create a realtime effects unit for acoustic instruments.

{% include single-image.html fileName="granulator-panis/4_SmallVersion.jpg" %}

For more information on Raphael's work you can visit his blog [http://rpanis.blogspot.fr/](http://rpanis.blogspot.fr/). Thanks to Raphael for sharing this project with us and we look forward to hearing more in the future.
