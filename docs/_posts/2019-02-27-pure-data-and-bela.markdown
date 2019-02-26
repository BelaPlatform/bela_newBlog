---
layout: post
title: "Learn: Pure Data and Bela"
date: 2019-03-25
categories:
  - "Tutorials"
  - "Software"
description: "Learn: Pure Data and Bela"
image: opal-rhythm/header.png
author: bela
---

This post gives an in-depth run through of using Pure Data with Bela. It explains how to get Pure Data patches running on Bela, various workflows, and how to treat sensor signals like audio.

{% include single-image.html fileName="puredata/bela-pd.png" %}

# Open source computer music

Bela has been designed to speak many languages. When it come to building interactive projects and particularly to the world of computer music we all have our favourites. When Bela was first created it was based solely around a core of C++ files and much of the versitility and power of Bela come form the levels of control and elegance of this programming language. C++ in the right hands can achive great things but there's more than one way to skin a cat. Over the last 30 years there has been a proliferation of new languages that specifically target sound and each one comes with its own philosophy, ways of working, aesthetics and (most importantly perhaps) community.

From the very beginning of the Bela project we have endeavoured to support as many ways of working as possible and to couple estabilished programming languages with the high definition sensing and responsive behaviour of Bela. To date we support [SuperCollider](), [FAUST](), [PYO](), [Rust](), [Csound](), and a significant part of the support and development for these projects has come from our community. Our first branching out, however,  was to a language that many of us in the Augmented Instruments Lab hold dear, a language that has taught me much of what I know about audio programming: [Pure Data]().

# Pure Data

For those of you unfamiliar with Pure Data you may recognise the boxes and patching cables in the above image from [Max/MSP](). From appearances Pure Data may seem to be the poor man's Max/MSP (which objectively it is as it's free) but it is in fact Max's open source twin sister. Originally developed in the 1990s by Miller Puckette at IRCAM (also the creator of Max), Pure Data was designed to allow musicians, artists and researchers to design interactive audio software without having to write a line of code. 

The 'patcher' or 'dataflow' programming logic that Pure Data follows works through a series of interconnected *objects* where the signal flow is controlled via patcher cables that connect one object to another. This makes it very easy to quickly sketch programmes for synthesis, live effects and interactive audio in general.

# Bela and Pure Data

As Pure Data is open source software it can be run on a whole host of machines from PCs and laptops to smart phones and embedded devices (i.e. Bela). On Bela we use the [libPd](https://puredata.info/downloads/libpd) library, a means on embedding the core DSP functionality of Pure Data on the board. We have a number of Pure Data examples on the board and the best place to look is the [gettingStarted example]().

## Audio I/O

Just as in normal Pd you can use the `[adc~]` and `[dac~]` objects for inputs and outputs. In the case of Bela the stereo input is accessed through `[adc~ 1 2]` and you can send to the stereo output by connecting to `[dac~ 1 2]`. 

{% include single-image.html fileName="puredata/pass-through.png" %}

## Analog I/O

In Bela the analog inputs and outputs can be treated like audio signals as they are of a high sampling rate and bit depth. We also use the `[adc~]` and `[dac~]` objects to receive and send the data. `[adc~ 3]` refers to Analog Input 0 (first two channels of `[adc~]` are audio inputs), likewise for `[dac~]`.

{% include single-image.html fileName="puredata/analog-input.png" %}
{% include single-image.html fileName="puredata/analog-output.png" %}


These inputs are sampled at audio sampling rate, so handle them as you would audio signals. It is necessary to use `[snapshot~]` if you want to turn them into control-rate values as in the example below. When the analog channels are sampled at a different rate than the audio, they are resampled automatically in the C++ wrapper.

{% include single-image.html fileName="puredata/snapshot.png" %}

## Digital I/O

Bela's digital inputs and outputs can be addressed from Pd. They can either be received as messages at message rate or as signals at audio rate. Unlike the analog channels which have a set direction, each digital pin can function as an input or an output and so this needs to be set explicitly from within the patch.

The digital I/O pins area initialised by sending messages to the `bela_setDigital`.

{% include single-image.html fileName="puredata/digital-init.png" %}

See the digital example inside the Puredata examples folder for more information and practical examples.

## MIDI I/O

Most class-compliant USB MIDI devices are compatible with Bela. You can use the `[notein]` and `[ctlin]` objects to receive midinote and CC messages from the device. See the `hello-midi` example inside the Puredata examples folder for more information. There is also an example of how Bela running Pd can be used as a MIDI to CV converter: [midi-cv]()

[MIDI example]

# Running Pure Data patches in IDE

Once you have opened a Pure Data project in the browser you can run it by selecting it and hitting the run button, just like any other project. When you open the example, the `_main.pd` file will be previewed in the browser window. At this point, it is not possible to edit the file in the browser. To edit the file you will need to download it from the browser and edit it in Pure Data on your machine.

[How Pd and Bela relate slide]

[gif of drag and drop]

You can now simply drag-and-drop of your PD patch onto the browser IDE, which will replace the default `_main.pd` file in that folder. Note that the top-level patch always needs to be named `_main.pd`.

# Projects build using Pure Data and Bela

- [instrument-maker](https://github.com/matthewscharles/instrument-maker) by Charles Matthews
- [Bela.pd](https://github.com/jarmitage/bela.pd) by Jack Armitage
- [Steamy](https://blog.bela.io/2018/09/07/rob-blazey-steamy-bela/) by Rob Blazey
- [Opal Rhythm Computor](https://blog.bela.io/2018/03/27/opal-rhythm-computor-dmx-krew/) by Ed DMX
- [TSR](https://blog.bela.io/2018/02/12/bela-trans-siberian-railway-egegonul/) by Ege Gonul
- [Audio Lightsaber](https://blog.bela.io/2016/12/01/saber/) by Christian Heinrichs and Robert Jack


