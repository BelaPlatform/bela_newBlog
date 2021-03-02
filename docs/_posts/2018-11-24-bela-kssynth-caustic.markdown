---
layout: post
title: "Bela KSSynth: a Twin Unit Karplus-Strong Machine"
date: 2018-11-24
categories:
  - "Hardware"
  - "Instruments"
  - "Projects"
description: "Bela KSSynth: a Twin Unit Karplus-Strong Machine"
image: kssynth/header.jpg
author: bela
---

KSSynth is the creation of Rej Poirier and brings together Bela with his [Caustic music software](http://www.singlecellsoftware.com/caustic) to create a fully featured hardware synth which uses Karplus-Strong synthesis. Over to Rej:


{% include youtube.html youtube="k2kq1T7Jn28" %}

## Twin Unit Karplus-Strong

I'm a computer programmer by trade and I mainly work on audio apps for mobile. My main app is called [Caustic](http://www.singlecellsoftware.com/caustic) and it's a collection of 14 different virtual synths, effects and sequencers. Having a little bit of electronics experience, I've always wanted to bring one of my synth designs to life. When the [Bela kickstarter campaign](https://www.kickstarter.com/projects/423153472/bela-an-embedded-platform-for-low-latency-interact) came along, I decided to give it a try.

I chose Caustic's "KSSynth", a twin unit Karplus-Strong machine because it was something that didn't exist commercially, and while the K-S algorithm is pretty simple, keeping it in tune over a range of parameters like in-line filtering and velocity expression requires a lot of tweaking (plus I really like how it sounds!). I brought over the C++ code I needed for the synth plus a few effects and an arpeggiator and got that compiling pretty quickly on the Bela board. 

## Hardware

For the hardware, 32 potentiometers are multiplexed into the Bela's 8 analog input lines using four dual-4-to-1 analog multiplexer chips ([CD4052](http://www.ti.com/product/CD4052B#)) on a separate circuit board. The buttons, switches, LEDs and encoders use digital I/Os.

{% include single-image.html fileName="kssynth/KS_Spaghetti.jpg" %}

The acquisition code reads the 8 analog values and places these into the synth's parameters according to which selector line is active, then increments the selector and sets up the multiplexer hardware accordingly for the next pass. A full scan runs once every 5ms so response is very good.

I'm also running a small [1602 LCD panel](https://www.openhacks.com/uploadsproductos/eone-1602a1.pdf) talking via the Bela's I2C channel to display control values, BPM, etc. I documented my process of hooking this up to the Bela and matching voltage levels in this forum thread: [https://forum.bela.io/d/99-interfacing-with-an-lcd-panel-via-i2c](https://forum.bela.io/d/99-interfacing-with-an-lcd-panel-via-i2c).

## Casing

The frame is made of bent sheet metal and capped with 3D-printed side panels. The front panel design was created to fit an A4 sheet of paper, then printed on a transparent sheet, like the kind used for old overhead projectors. The sheet was then carefully glued onto the painted panel using clear epoxy and rolled out to remove air bubbles. The overall result isn't *perfect* but much cheaper than a custom silk-screen job.

{% include single-image.html fileName="kssynth/synth-casing.jpg" %}

The input audio jack is placed at the back and provides a way to run external synths through the KSSynth's effects chain. I have a Korg MS-20 mini that sounds great when run through a few stereo effects so this lets me either use both synths together or use the KSSynth as an effects rack for the MS-20.  

*Thanks to Rej for sharing this project!*
