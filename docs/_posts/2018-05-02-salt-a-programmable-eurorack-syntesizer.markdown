---
layout: post
title: "Salt"
date: 2018-03-19
categories:
  - "Hardware"
description: "Salt: a programmable Eurorack module"
image: salt/salt-header.jpg
author: bela
---

# Salt

Salt is a Bela-powered programmable Eurorack module, developed by [RebelTechnology](https://rebeltech.org) and [Bela](https://bela.io).

{% include single-image.html fileName="modular/Bela-Modular-Proto.jpg" caption="An early prototype of Salt" %}

## What does it do?

Salt is a programmable module. As such, it can be anything you want it to be. An oscillator? A filter? A sequencer? A waveshaper? A MIDI-CV converter? A flexible utility module? Something completely different and crazy? Any combination of the above or more?
With plenty of inputs and outputs, you can even assign different functions to different parts of the module and have them all run at the same time.

The module comes with a number of example patches which are ready to go; additionally you can write programs using a number of programming languages, including: PureData, Supercollider, C++.
You will need to connect a computer in order to program it, but you can then take it to the stage in stand-alone mode. Scroll down for some [great examples](#featured-projects).

## Who is making it?

Salt is a joint effort between RebelTechnology and Bela.

[Rebel Technology](https://www.rebeltech.org) is a London based tech collective creating radically innovative music electronics since 2009, committed to using technology to create positive change and help people realise their creative potential.

[Bela](https://bela.io) is an embedded platform for audio and sensor processing: a computer on a board for making audio projects with sensors which made its ground-breaking appearance with a successful [Kickstarter campaign](https://www.kickstarter.com/projects/423153472/bela-an-embedded-platform-for-low-latency-interact) in 2016 and has since been used in [countless projects](https://blog.bela.io) around the world.

## Tech specs

The module is split into two sub-modules, in order to provide maximum flexibility for placement in your Eurorack case:

{% include single-image.html fileName="modular/modular-core-expander.jpg" caption="The Bela Core with the BeagleBone Green (left) and the Bela Expander (right)" %}

### The Bela Core:

* Width: 12HP
* Physical dimensions (excluding faceplate): 109mm (height), 60mm(width), 43mm(depth)
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
* Power consumption (off the +12V rail): 450mA max.

### The Bela Expander:

* Width: 10HP
* Physical dimensions (excluding faceplate): 109mm (height), 48mm(width), 30mm(depth)
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
* Power consumption: 20mA (off the +12V rail)

The Bela Core is the main unit, at the back of which is plugged a Beaglebone Green with a Bela cape. A 20-pin ribbon cable is used to connect the Expander to the Core, providing power and signals, and only the Core is connected to the power supply of your case. The Core can work on its own, but the Expander requires the Core.

## Coming soon:

More images, diagrams, demos, example code, price ...

## Frequently asked questions

### When will Salt be available?

Salt will be launched in early May 2018 at SuperBooth in Berlin. A limited run of modules will be available for sale at the SuperBooth workshop and on our shop. The price is TBA.

### Do I need to know how to program in order to use Salt?

Salt will come with a number of existing example patches which can work out of the box, without need to write a single line of code. You can program your own patches using C++, PureData or SuperCollider. [PureData](http://puredata.info) is a graphical programming language with which you can create and shape sounds connecting blocks, not too dissimilar from patching modules together.

### Do I need a computer to use Salt?

In order to program Salt, or load the example patches, you need to connect it to a computer, which provides an intuitive graphical user interface. However, once you are done with programming or selecting the example patch, you will no longer need the computer, so you can take it to the stage hassle-free.

### Can I run my existing Bela projects with Salt?

Yes, Salt runs the same software as the regular Bela.

### I already have a Bela kit, can I use it with Salt?

Salt will be sold either as a kit with a Bela cape and a BeagleBone Green, or without the BeagleBone and Bela cape, so that you can re-use your existing Bela kit. However, if you use a BeagleBone Black, you may have trouble fitting the module with the USB host cable inside some Eurorack cases. For this reason, we recommend using the BeagleBone Green, which has the USB host port on the same side as the USB device port.

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

The built-in quasi-sawtooth oscillator is modelled after the vibration of the vocal folds in the glottis and can be controlled independently via CV, has well as using the internal brownian LFO which gives the drone in the original Trombone its trademark wond. External sounds can be processed through the vocal tract filter.

