---
layout: post
title: "Learn: Bela and Pure Data"
date: 2019-03-06
categories:
  - "Tutorials"
  - "Software"
  - "Education"
description: "Learn: Bela and Pure Data"
image: puredata/header-2.png
author: robert
---

This post gives an in-depth run through of using Pure Data with Bela. It explains what Pure Data is, how to get Pure Data patches running on Bela, and how we treat sensor signals like audio signals.

{% include single-image.html fileName="puredata/bela-pd.png" %}

# Open source computer music

Bela has been designed to speak many languages. When it comes to building interactive projects and particularly to the world of computer music we all have our favourites. When Bela was first created it was based solely around a core of [C++](http://www.cplusplus.com/) files and much of the versatility and power of Bela comes from the low level control and elegance of this programming language. C++ in the right hands can achieve great things, but it has a substantial learning curve and can be limiting when it comes to quick prototyping. Over the last 30 years there has been a proliferation of new languages that specifically target sound and music and each one comes with its own philosophy, ways of working, aesthetics and (most importantly perhaps) community.

{% include single-image.html fileName="software.jpg" caption="An example of creating oscillators in C++ on Bela." %}

From the very beginning of the Bela project we have endeavoured to support as many ways of working as possible and to couple established programming languages with the high definition sensing and responsive behaviour of Bela. To date we support [SuperCollider](https://blog.bela.io/2017/10/29/bela-and-supercollider-live-coding-sensors/), [Csound](http://cosmoproject.github.io/bela/), [FAUST](https://github.com/BelaPlatform/Bela/wiki/Compiling-Faust-code-for-Bela) and [PYO](https://github.com/belangeo/pyo-bela) and a significant part of the support and development for these languages has come from the wider Bela community. Our first branching out, however, was to a language that many of us in the [Augmented Instruments Lab](http://instrumentslab.org) hold dear, a language that has taught me personally much of what I know about audio programming: [Pure Data](https://puredata.info/).

# Pure Data

For those of you unfamiliar with Pure Data you may recognise the boxes and patching cables in the below image from [Max/MSP](https://cycling74.com/). From first appearances Pure Data may seem like an impoverished version of Max/MSP (which objectively it is as it's free) but it is in fact Max's open source twin. Originally developed in the 1990s by Miller Puckette at [IRCAM](https://www.ircam.fr/) (who was also the creator of Max), Pure Data was designed to allow musicians, artists and researchers to design interactive audio software without having to write a line of code.

{% include single-image.html fileName="puredata/max-and-pd.png" caption="An example of simple additive synthesis in Max/MSP on the right and Pure Data on the left." %}

The 'patcher' or 'dataflow' programming logic that Pure Data follows works through a series of interconnected *objects* where the signal flow, whether that is MIDI notes or audio, is controlled via patcher cables that connect one object to another. This makes it very easy to quickly sketch programmes for synthesis, live effects and interactive audio in general.

# Bela and Pure Data

As Pure Data is open source software it can be run on a whole host of machines from PCs and laptops to smart phones and embedded devices (i.e. Bela!). On Bela we use the [libPd library](https://puredata.info/downloads/libpd), a means on embedding the core DSP functionality of Pure Data on the board. We have a number of Pure Data examples on the board that cover all basic functionality – the best place to begin is with our [getting started example](https://github.com/BelaPlatform/Bela/tree/master/examples/PureData/getting-started).

{% include single-image.html fileName="puredata/bela-and-puredata
.jpg" caption="The details of how Bela and Pure Data relate." %}


## Audio I/O

Just as in normal Pd you can use the `[adc~]` and `[dac~]` objects for inputs and outputs. In the case of Bela the stereo input is accessed through `[adc~ 1 2]` and you can send to the stereo output by connecting to `[dac~ 1 2]`.

{% include single-image.html fileName="puredata/pass-through.png" %}

## Analog I/O

In Bela the analog inputs and outputs can be treated like audio signals as they are of a high sampling rate and bit depth. We also use the `[adc~]` and `[dac~]` objects to receive and send this data. `[adc~ 3]` refers to Analog Input 0 (as the first two channels of `[adc~]` are audio inputs). The same logic applies to `[dac~]` for the analog outputs as can be seen in the below image.

{% include single-image.html fileName="puredata/analog-input.png" %}
{% include single-image.html fileName="puredata/analog-output.png" %}


These inputs and outputs are sampled at audio sampling rate, so handle them as you would audio signals. It is necessary to use `[snapshot~]` if you want to turn them into control-rate values as in the example below.

{% include single-image.html fileName="puredata/snapshot.png" %}

Note that the CTAG multichannel cape is also compatible with Pure Data but in this case there are a few additional considerations to do with channel numbering to accommodate the extra audio channels. See [here]() for more details.

## Digital I/O

Bela's digital inputs and outputs can be also be addressed from within Pd. They can either be received as messages at message rate or as signals at audio rate. Unlike the analog channels which have a set direction, each digital pin can function as an input or an output and so this needs to be set explicitly from within the patch.

The digital I/O pins area initialised by sending messages to `bela_setDigital`.

{% include single-image.html fileName="puredata/digital-init.png" %}

See the [digital example](https://github.com/BelaPlatform/Bela/tree/master/examples/PureData/digital) inside the Pure Data examples folder for more information and practical uses.

## MIDI I/O

MIDI also works with Pure Data on Bela: most class-compliant USB MIDI devices are compatible. You can use the `[notein]` and `[ctlin]` objects to receive midinote and CC messages from the device. See the [hello midi](https://github.com/BelaPlatform/Bela/tree/master/examples/PureData/hello-midi) example inside the Pure Data examples folder for more information. There is also an example of how Bela running Pd can be used as a MIDI to CV converter: [midi-cv-midi](https://github.com/BelaPlatform/Bela/tree/master/examples/PureData/midi-cv-midi).

{% include single-image.html fileName="puredata/midi.png" %}

Bela also shows up as a MIDI device on your host PC meaning that you can send MIDI messages to your favourite DAW to control further VSTs or anything else. You will find Bela listed among your MIDI devices.

# Running Pure Data patches in IDE

Once you have opened a Pure Data project in the browser you can run it by selecting it and hitting the run button, just like any other project. When you open the example, the `_main.pd` file will be previewed in the browser window. At this point, it is not possible to edit the file in the browser. To edit the file you will need to download it from the browser and edit it in Pure Data on your machine.

{% include single-image.html fileName="puredata/ide.png" %}

You can now simply drag-and-drop your PD patch onto the IDE in your browser window, which will replace the default `_main.pd` file in that folder. Note that the top-level patch always needs to be named `_main.pd`.

# Projects built using Pure Data and Bela

- [instrument-maker](https://github.com/matthewscharles/instrument-maker) by Charles Matthews
- [Bela.pd](https://github.com/jarmitage/bela.pd) by Jack Armitage
- [Binaural Spatial Audio](https://blog.bela.io/2018/10/12/bela-AR-VR-binaural-spatial-audio/) by Rebecca Stewart and Rishi Shukla
- [Steamy](https://blog.bela.io/2018/09/07/rob-blazey-steamy-bela/) by Rob Blazey
- [Opal Rhythm Computor](https://blog.bela.io/2018/03/27/opal-rhythm-computor-dmx-krew/) by Ed DMX
- [TSR](https://blog.bela.io/2018/02/12/bela-trans-siberian-railway-egegonul/) by Ege Gonul
- [Audio Lightsaber](https://blog.bela.io/2016/12/01/saber/) by Christian Heinrichs and Robert Jack
- [Of Nature and Things](https://blog.bela.io/2017/12/12/fedde-ten-berge-instruments-bela/) by Fedde ten Berge
