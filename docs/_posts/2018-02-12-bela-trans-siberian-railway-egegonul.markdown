---
layout: post
title: "TSR by Ege Gonul: Bela on the Trans-Siberian Railway"
date: 2018-02-12
categories:
  - "Software"
  - "Hardware"
  - "Projects"
description: "TSR: Bela on the Trans-Siberian Railway"
image: tsr/instrument-siberia-2.jpg
author: bela
---
In this post we present TSR, a 4-track sampler and sequencer groovebox created by [Ege Gonul](http://www.egegonul.com/).

{% include vimeo.html vimeo="247509007" %}

Ege built this instrument to use as a mobile music studio during a train journey throughout Siberia (the name “TSR” stands for Trans-Siberian Railway). It was developed for outdoor use with a battery life that goes for more than 25 hours, but the instrument's portability does not sacrifice any of its features: it can also fit perfectly into a modern studio setup with clocks-input for synchronizing with other gear. 

# How it works

In terms of fuctionality the TSR is designed to capture external sounds and sculpt them. It allows musicians to sample, layer and rearrange the fundamental properties of sounds such as playback speed and granularization, and from there it is possible to combine these layers via a filter with 4-Stage envelope contour. Each of the 4 tracks also have built-in effects: a sample-rate reducer and distortion to smear the spectrum. 

{% include single-image.html fileName="tsr/instrument-siberia.jpg" %}

Digitally calibrated piezo microphones on the top right corner give an MPC-like means of feeding audio into the instrument. On the bottom right there is a sequencer that can behave in some very complex ways: it has conditional functions like "Random Mask" plus the ability to store step-wise parameters, locking all 32 synthesis parameters for each step. It also has some interesting modulation options on the song/track level, such as the change of bar-speed per step. 

{% include single-image.html fileName="tsr/faceplate.jpg" %}

# Case and PCB

The casing and face plate of TSR were created by Ege from scratch. He used CAD tools to design and print the 3D case seen below, and graphical image editing software to create the front panel. Ege also designed a PCB that sits on top of the Bela board and breaks out all the connections to the front panel. On the front panel there are multiple rotary encoders for control, an LCD display, buttons and LEDs for the sequencer and the four piezo elements for audio-rate input.

{% include single-image.html fileName="tsr/case.jpg" %}


# How Bela was used
Ege first heard of Bela during our [STEIM workshop](http://blog.bela.io/2016/12/15/steim/) in 2016 and has used Bela on several projects since. Before the TSR most of his projects had been relatively simple with a single function in mind. The TSR instrument is the most complex project that Ege has made using Bela, but once he realised what could be achieved with the platform he decided that he could build something he had always wanted: a groovebox / sampler that would survive the Trans-Siberian Railway and provide a mobile music making studio for the whole journey.

{% include single-image.html fileName="tsr/tsr-code.jpg" %}

Bela is the heart of this project and handles all control data including encoders, piezos, LCDs, LEDs and buttons. The core of the code for the 4-channel sampler / sequencer that Ege created was written in Pure Data which runs on the board. If you're interested you can find the patches on [Ege's github page](https://github.com/everythingwillbetakenaway/TSR). Ege mentioned that Bela's browser-based IDE helped him a lot during the implementation process, because it made it very easy to compile new code and try out new things on the fly. Now that the core of the instrument is in place it's easy to refine it and add new features. The PCB that Ege designed attaches directly on top of the Bela board via rows of male headers that fit into the female headers of Bela. Ege has also used the [Bela Mux Capelet](https://shop.bela.io/bela-accessories/bela-mux-capelet) in his design to increase the number of analog inputs available.

{% include single-image.html fileName="tsr/pcb-design.jpg" %}

{% include single-image.html fileName="tsr/tsr-performance.jpg" %}


[Ege Gonul](http://www.egegonul.com/) is a graduate in electronic engineering and has been interested in electronic music since a very young age. His main area of focus is in making music with modular synthesisers and hardware sequencers. In his designs he tries to expand the boundaries of music making through new interfaces, instruments, and programming languages. Thanks to Ege for sharing this excellent instrument, you can find out more about his work on his [website](http://www.egegonul.com/), and we look forward to seeing more in the future!

