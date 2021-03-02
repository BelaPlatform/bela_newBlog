---
layout: post
title: "The Ganesh: Probability-based Eurorack Sequencer"
date: 2019-01-09
categories:
  - "Instruments"
  - "Projects"
  - "Sound Design"
  - "Synths"
description: "The Ganesh is a probability-based hardware sequencer created by Jon Pigrim in eurorack modular format."
image: ganesh-sequencer/header.jpg
author: bela
---

The Ganesh is a probability-based hardware sequencer created by Jon Pigrem. The sequencer uses Bela and the Multiplexer Capelet and is built for the Eurorack modular format providing varied and exciting rhythmic patterns. Over to Jon to tell us more:

# Sequencing with chance

The Ganesh provides 3 channels of 16 step sequencing. Each potentiometer corresponds to a step and sets the probability of a trigger occurring on that specific step (0%-100%). The device has two gate outputs per channel for sequencing external sources, as well as two audio outputs for internal sample playback. As inputs the sequencer accepts Eurorack standard clock and reset signals.

{% include single-image.html fileName="ganesh-sequencer/in-action.jpeg" caption="The Ganesh Sequencer in action" %}

The Hindu god Ganesh is known as the overcomer of obstacles. I've often found that a particular obstacle in electronic music production is basic repetition, and musical structures that are overly 'loop-based'. Many production tools subtly promote loop-based practices though the implementation of binary possibilities for musical events in pitch and time. The aim of the Ganesh Sequencer is to provide a probability-based approach to sequencing musical events. This is not a new concept compositionally or technically, and many great tools are already available such as the [Malekko Varigate](https://malekkoheavyindustry.com/product/varigate-8/) and [Winter Moduar’s Eloqeuncer](http://winter-modular.com/).

## Hardware

The sequencer runs on a [Bela board](https://shop.bela.io/bela/starter-kit) attached to the [Mux Capelet](https://shop.bela.io/bela-accessories/bela-mux-capelet), which multiplexes the standard 8 analogue inputs to provide 64 at a reduced sample rate. 48 inputs are used for the potentiometers and two more for clock and reset inputs. The gate outputs for each channel are sent from the native analogue outputs on the Bela. Bela’s audio outputs are also used for user defined sample playback while all 16 of Bela’s digital pins are used as outputs to trigger the LEDs.
The skiff and faceplate have been laser cut in 3mm ply and later stained with wood stain. 

{% include single-image.html fileName="ganesh-sequencer/mux-sq-new.jpg" caption="The Bela Multiplexer Capelet" %}

## Software

The software side of the project is in essence quite simple. On each step the value of all potentiometers are read and scaled to a range of 0-100. This value is then compared to a randomly generated number of the same range, the likelihood of an event calculated and a trigger signal generated. The internal sample based sequencer supports user-defined samples and has 16 voices to aid polyphony for longer samples. Due to Bela’s ultra low latency operation, the system is fully real-time and unhindered by latency or jitter issues.

{% include single-image.html fileName="ganesh-sequencer/main-image.jpeg" %}


## In Action

The below video shows the Ganesh in action: the modular system is clocked by a TR808 drum machine which also provides the drum track; the three channels of the sequencer control generative patterns for the keyboard, hi-hat and baseline parts of the arrangement.

{% include vimeo.html vimeo="306058716" %}

Although fairly basic in terms of functionality, the sequencer meets its intended goal and provides probability-based sequencing for real-time performance. The duel trigger outputs on each channel allow some interesting patching possibilities such as controlling a filter or envelope of a sound with its own (or another) channel’s output.

**Thanks to Jon for sharing this great project with us!**
