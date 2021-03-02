---
layout: post
title: "Neopixels, Feather M4, and Trill Ring Synthesiser"
date: 2020-10-27
categories:
  - Instruments
  - Hardware
  - Synths
  - Education
  - Trill
description: "The Ring Synth by Thibault Jaccard"
image: ring-synth/header.jpg
author: bela
---

Thibault Jaccard has created a nifty synth using Trill Ring, Neopixels a Feather M4 Express as part of the [Music, Communication & Technology](https://www.ntnu.edu/studies/mmct/about) joint Master's programme which takes place between the Norwegian University of Science and Technology and University of Oslo.

{% include youtube.html youtube="G6x0lBIT2lw" %}

# The Ring Synth by Thibault Jaccard

The [Ring Synth](https://mct-master.github.io/interactive-music-systems/2020/10/20/the-ring-synth.html) is but one of many brilliant projects which were created during this course. Over the next few weeks we'll be featuring other projects which came the Interactive Music Systems module which is taught using Bela and the Trill sensors. The Ring Synth is a monophonic subtractive synth controlled by voice and finger movement.

## System overview

A [Trill Ring](https://shop.bela.io/products/trill-ring) capacitive touch sensor is used to get touch position and size which is read by an [Adafruit Feather M4 Express](https://www.adafruit.com/product/3857) and an [Adafruit NeoPixel 24 LED Ring](https://www.adafruit.com/product/1586) is used for visual feedback.

In addition to this there is a sound engine implemented in Pure Data and running on an accompanying laptop. A microphone and headphones are connected to the laptop via an audio interface. See the below diagram for details.

{% include single-image.html fileName="ring-synth/system-overview.svg" %}

## Inputs + outputs

From the voice, the fundamental frequency and the RMS (loudness) are extracted in Pure Data. From the Trill Ring sensor, the touch size (which functions in a way similar to pressure) and the speed of finger movement are extracted using a custom program implemented in the Arduino IDE (in C). This data is sent to the computer using MIDI CC over USB.

An [Adafruit NeoPixel 24 LED Ring](https://www.adafruit.com/product/1586) surrounds the Trill Ring, and gives useful feedback to the performer. In this example the touch size is mapped to the number of lit LEDs and the speed is mapped to colour.

{% include single-image.html fileName="ring-synth/header.jpg" %}


## Synthesis + mapping
This subtractive synthesiser has five main parameters to control: harshness, vibrato, noisiness, the volume envelope, and the dry/wet of the reverb.

The frequency extracted from the voice is mapped to the fundamental frequency of the synthesiser in a one-to-one fashion. The rest (RMS, touch size and speed) interact in a more complex many-to-many mapping as can be see below:

{% include single-image.html fileName="ring-synth/mapping.png" %}

You can find the code for this synth here: [https://github.com/Thib03/The-Ring-Synth](https://github.com/Thib03/The-Ring-Synth).

## About Thibault Jaccard

Having grown up in a professional family of musicians, Thibault Jaccard developed an attentive ear for music at an early age. With a passion for jazz music theory he developed a strong appreciation for harmonic complexity, joining "Gipsy Tonic" in 2015.
During his bachelor's degree he discovered the [Digital and Cognitive Musicology Lab](https://www.epfl.ch/labs/dcml/) at [EPFL](https://www.epfl.ch/en/) which allowed him to discover an unsuspected link between engineering and music theory. He has designed a new digital instrument, AutoScale, which was presented at the International Conference for New Interfaces for Musical Expression (NIME) 2020. He is now pursuing his studies as part of the MTC programme.

# MTC Masters

The [Music, Communication & Technology](https://www.ntnu.edu/studies/mmct/about) (MCT) joint Master's programme takes place between the Norwegian University of Science and Technology and University of Oslo. This project comes from the Interactive Music Systems module where the focus is on building interactive systems and instruments using Bela and Trill amongst other components. We will be featuring more projects from this course in the coming weeks and for further information you can also check out their [blog](https://mct-master.github.io/).
