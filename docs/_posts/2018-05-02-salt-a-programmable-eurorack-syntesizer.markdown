---
layout: post
title: "Salt: a programmable Eurorack module"
date: 2018-05-02
categories:
  - "Hardware"
description: "Bela in a Eurorack"
image: salt/salt-header.jpg
author: bela
---

Salt is a Bela-powered programmable Eurorack module, developed by [RebelTechnology](https://rebeltech.org) and [Bela](https://bela.io).

{% include single-image.html fileName="salt/salt-front.jpg" caption="Salt and Salt+" %}

## What does it do?

Salt is a programmable module. As such, it can be anything you want it to be. An oscillator? A filter? A sequencer? A waveshaper? A MIDI-CV converter? A flexible utility module? Something completely different and crazy? Any combination of the above or more?
With plenty of inputs and outputs, you can even assign different functions to different parts of the module and have them all run at the same time.

The module comes with a number of example patches which are ready to go; additionally you can write programs using a number of programming languages, including: PureData, Supercollider, C++.
You will need to connect a computer in order to program it, but you can then take it to the stage in stand-alone mode. Scroll down for some [great examples](#featured-projects).

<div style="text-align: center; margin-bottom: 10px;"><a href="https://shop.bela.io/salt" name="Buy Salt now"><button name="button" style="font-size: larger; font-weight: bold; cursor: pointer; color: #ffffff; padding: 10px; background-color: #00bea4; border-radius: 4px; border: 4px #00bea4;">Buy Salt now</button></a></div>

## Who is making it?

Salt is a joint effort between RebelTechnology and Bela.

[Rebel Technology](https://www.rebeltech.org) is a London based tech collective creating radically innovative music electronics since 2009, committed to using technology to create positive change and help people realise their creative potential.

[Bela](https://bela.io) is an embedded platform for audio and sensor processing: a computer on a board for making audio projects with sensors which made its ground-breaking appearance with a successful [Kickstarter campaign](https://www.kickstarter.com/projects/423153472/bela-an-embedded-platform-for-low-latency-interact) in 2016 and has since been used in [countless projects](https://blog.bela.io) around the world.

## Tech specs

The module is split into two sub-modules, in order to provide maximum flexibility for placement in your Eurorack case:

{% include single-image.html fileName="salt/salt-salt+.jpg" caption="Salt with the BeagleBone Green and Bela cape (left) and Salt+ (right)" %}

### Salt:

* Dimensions 
	* Width: 12HP / 61mm
	* Height: 3U / 129mm
	* Depth: 43mm
* I/O (1/8" jacks):
	* 2 audio in (AC-coupled)
	* 2 audio out (DC-coupled)
	* 4x CV in (with pots offset)
	* 4x CV out
	* 2x trigger in
	* 2x trigger out
	* USB Device port
* Controls:
	* 4x pots (offset for CV in)
	* 2x button with integrated bi-color LED
* Power:
	* +12V: 250mA
	* -12V: 50mA

### Salt+:

* Width: 10HP
* Dimensions 
	* Width: 10HP / 51mm
	* Height: 3U / 129mm
	* Depth: 15mm
* I/O (1/8" jacks):
	* 4xCV in
	* 4xCV out
	* 2x trigger in
	* 2x trigger out
	* 2x button with integrated bi-color LED
	* USB host port
* Controls:
	* 4x pots (offset for CV in)
	* 2x button with integrated bi-color LED
* Power:
	* +12V: 40mA
	* -12V: 40mA

Salt is the main unit, at the back of which is plugged a Beaglebone Green with a Bela cape. A 20-pin ribbon cable is used to connect Salt+ to Salt, providing power and signals. Only Salt is connected to the Eurorack power supply. Salt+ requires Salt in order to work.

#### Voltage ranges:

The trigger in and outs are 0V to +5V.
The CV inputs have a 10V pk-to-pk range, and the offset potentiometer allows to shift the usable input range down to -10V to 0V or up to 0V to 10V.
The CV and audio outputs have a -5V to +5V range.

#### Sampling frequency:

The audio and trigger channels are sampled at 44.1kHz, while the CV channels are sampled at 22.05kHz when all 8 are in use, or 44.1kHz when only 4 are used.

## Faceplate

Salt and Salt+ come with a white aluminium faceplate with black prints. Given that we cannot imagine what you are going to do with it, we also ship with two spare transparent acrylic faceplates that you can use for your customized designs.

## Frequently asked questions

### How long will Salt be available for?

Salt was released in May 2018 at SuperBooth in Berlin. This is a limited edition product, so [get yours](https://shop.bela.io/salt) while you can!

### Do I need to know how to program in order to use Salt?

Salt will come with a number of existing example patches which will work out of the box, without need to write a single line of code. You can program your own patches using C++, PureData or SuperCollider. [PureData](http://puredata.info) is a graphical programming language with which you can create and shape sounds connecting blocks, not too dissimilar from patching modules together. Some patches are already available [here](https://github.com/BelaPlatform/Bela/tree/dev-modular/examples/13-Salt) and many more are on their way!

### Do I need a computer to use Salt?

In order to program Salt, or load the example patches, you need to connect it to a computer, which provides an intuitive graphical user interface. However, once you are done with programming or selecting the example patch, you will no longer need the computer, so you can take it to the stage hassle-free.

### Can I run my existing Bela projects with Salt?

Yes, Salt runs the same user software as the regular Bela.

<a name="featured-projects"></a>

## Featured projects

### Crazy Tape Delay

#### Robert Thomas

{% include youtube.html youtube="l2xY0MIXuLI" %}

Sound designer [Robert Thomas](https://twitter.com/robertthomassnd) has been playing around with Salt for a while and created this patch using PureData. It is a crazy tape delay with mad self oscillations and slidey slew. The video shows a free experimentation during the development of the patch.

### The Pink Trombone

#### Giulio Moro

{% include youtube.html youtube="bo5ZEgBEapk" %}

[The original Pink Trombone](http://dood.al/pinktrombone/) took over the internet in early 2017: it appeared in the form of a web-based interactive vocal synthesizer, where the user could manipulate the position of the tongue and the shape of the vocal tract. With a captivating look, and a wandering guttural drone, no wonder it went viral.

This [project](https://github.com/giuliomoro/pink-trombone) ported the original Javascript code to C++ in order to run it on Salt, allowing to use CV inputs to control the shape of the vocal tract, so that fricatives, plosives and a wide range of vowel sounds can be sequenced in your modular.

The built-in quasi-sawtooth oscillator is modelled after the vibration of the vocal folds in the glottis and can be controlled independently via CV, has well as using the internal brownian LFO which gives the drone in the original Trombone its trademark wondering pitch. External sounds can be processed through the vocal tract filter.

