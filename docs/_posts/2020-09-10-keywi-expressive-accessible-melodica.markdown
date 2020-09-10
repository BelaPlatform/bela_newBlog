---
layout: post
title: "The KeyWi: an accessible electronic wind instrument"
date: 2020-09-10
categories:
  - Instruments
  - Hardware
  - Synths
  - Software
description: "The KeyWi: an accessible electronic wind instrument"
image: keywi/deconstructed.jpg
author: bela
---

The KeyWI is an expressive and accessible electronic wind instrument based on the design of the melodica created by Matthew Caren, Romain Michon, and Matt Wright. In this post Matthew talks us through its design and build.

# Creating an accessible wind instrument

The melodica is an instrument that combines the expressiveness of a wind instrument with the ease of use of a keyboard. An added benefit is that (unlike pianos), the melodica's compact size makes it extremely portable, giving keyboard players an instrument they can take anywhere.


{% include single-image.html fileName="keywi/keywi-image-transparent.jpg" %}


The goal of the KeyWI was to create an electronic melodica-like wind instrument that offered the expressiveness and portability of its acoustic melodica, with the vastly increased flexibility and versatility of an electronic system. Like the traditional melodica, the KeyWI uses a piano keyboard as the basis of the control system, making it accessible to the wide community of keyboard players as well as allowing for intuitive polyphony. The KeyWI also aims to improve upon some limitations in electronic wind instruments compared to their acoustic counterparts — such as attack/transient response, breath sensor dynamic range, and nuances in breath pressure — while remaining as open-source as possible.

# Hardware design

{% include single-image.html fileName="keywi/deconstructed.jpg" %}

A custom-printed circuit board serves as the central hub for all connections going in and out of the [Bela Mini](https://shop.bela.io/products/bela-mini-starter-kit). It mounts to the top of the Bela cape through headers soldered to the board, some of which function as electrical connections to the Bela as well as structural support. The pressure sensor, output jack, and other components all mount on to the PCB. The entire setup is powered by batteries located in the right side of the KeyWI.

{% include single-image.html fileName="keywi/board-image.jpg" %}

## Keyboard

The control system consists of two main components: a keyboard and a breath pressure sensor. The keyboard is from a cheap MIDI keyboard bought from Amazon — only the keys, key contacts, and main circuit board from the controller are used; custom 3D-printed hardware replaces the casing, mounts, and other electronics. The keyboard sends key and velocity data to the main board via USB MIDI.

{% include single-image.html fileName="keywi/platform-blockdiagram.png" %}

## Breath sensing

To measure breath input, a [MPXV4006DP pressure sensor](https://www.nxp.com/part/MPXV4006DP#/) is used — a 3D-printed mouthpiece connects either to a short tube attached to the sensor, such that the KeyWI is brought up to the mouth to be played, or to a longer vinyl tube, so that it can be rested on a table. A small hole in the side of the mouthpiece allows air to flow through the mouthpiece, as well as greatly increasing the dynamic range: proportionally less pressure is exerted on the sensor, so it takes significantly more pressure to reach the sensor's limit.

{% include single-image.html fileName="keywi/mouthpiece.png" Caption="3D model of the mouthpiece." %}

## Enclosure

The enclosure is made of nine laser-cut layers of birch plywood fastened together with five bolts, and the keyboard supports and main circuit board mount to the bottom layer of the enclosure.

{% include single-image.html fileName="keywi/keywi-layers.png" Caption="The laser-cut layers of the enclosure." %}

To be as accessible to as many users as possible, the KeyWI is entirely open source: project files, as well as Bela software and hardware and the Faust compiler are all open source and can be found here: [https://github.com/matthewcaren/keyWI](https://github.com/matthewcaren/keyWI). The instrument can be assembled with only access to basic maker tools, common supplies, and the internet.

# Software

## Faust and Bela

A central component of the design of the KeyWI as a platform is its workflow and ease of development. Sound is synthesized using Faust running on a Bela Mini — the Faust compiler can build directly to a Bela C++ architecture, and the resulting file is simply compiled onto the Bela. Using the online Faust editor and Bela IDE, this entire process can be executed in less than a minute, using exclusively GUI-based systems, without any setup or installations. This creates an extremely accessible and efficient workflow that allows for quick iteration of ideas.

## Performing with the instrument

The sound synthesis for the melodica model in the demo video below is based on the symmetrical clipping of a sine wave in order to create the odd harmonics characteristic of the vibration of free reeds. In addition to the melodica model, patches for the KeyWI include clarinet and brass instrument physical models and several subtractive synthesis-style synth sounds.

{% include youtube.html youtube="u4_JpFIlvss" %}

Using Bela and Faust to develop the KeyWI really helped accelerate and focus the project — without having to worry about latency, MIDI libraries, or lower-level DSP, we could focus completely on designing and building the instrument itself. To find out more about using Faust with Bela check out the [Faust language guide](https://learn.bela.io/using-bela/languages/faust-experimental/).

## Project files and technical details

- For more information on the project check out the [project site](https://ccrma.stanford.edu/~mcaren/keyWI/).
- For all the code and project files check out the [project github](https://github.com/matthewcaren/keyWI).
- To find out more technical detail about the instrument check out this [NIME 2020 paper](https://ccrma.stanford.edu/~mcaren/keyWI/KeyWI-paper.pdf).


**A huge thank you to Matthew for sharing this project with us!**
