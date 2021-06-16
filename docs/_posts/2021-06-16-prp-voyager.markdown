---
layout: post
title: "Performing with Pseudo Random Pulses: the PRP Voyager"
date: 2021-06-16
categories:
  - "Instruments"
  - "Hardware"
  - "Projects"
  - "Sound Design"
description: ""
image: prp-voyager/instrument-leds.jpg
author: bela
---

In this post we present the PRP Voyager, an electronic musical instrument developed by Fedde ten Berge & Ward Slager which allows performers to investigate the rhythmical relationship between pulse and randomness.

{% include youtube.html youtube="-5usPllpkAQ" %}

# Pseudo Random Pulses

## Indeterminacy for music making

Taking musical inspiration from sources of indeterminacy, whether flipping a coin, chance operations or other random processes, has a long and fruitful lineage in contemporary music. Indeterminacy is used as a means of generating new material, as a source of inspiration which can help composers and performers move from their tried-and-tested habits. Striking the right balance between completely random sequences of events which often lack structure, and more directly controlled passages of sound is a tricky task. With the PRP Voyager Fedde ten Berge and Ward Slager have created an instrument which exists in the sweet spot between stimulating rhythmic pattern generation and direct and intimate control of a complex system.

{% include single-image.html fileName="prp-voyager/prp-voyager-1.jpg" caption="The PRP Voyager in all its glory." %}

In the video at the top of this post Fedde ten Berge explains in detail the inspiration and build process of the PRP Voyager. The instrument generates patterns with a pseudo random quality that serve as a distinct musical language. The hardware of the instrument was designed for quick control over this unique and complex sound generation technique. The end result is an instrument tailored to live performance and improvisation, highly controllable but with highly random processes at its core.


## The PRP algorithm

The PRP algorithm by Fedde ten Berge is the backbone of the instrument. It was designed with the desire to generate non-linear pulse patterns that wander between order and disorder. In the below video you can hear this algorithm in its full glory in a performance.

{% include youtube.html youtube="e6_M30VYb-8" %}

### Sound Design

Sound is synthesised by six identical instances of the Pseudo Random Pulse (PRP) algorithm and is supplemented with a pitch section which tunes the pulses, a carrier section which uses the pulse envelopes as modulators in various types of synthesis, and a resonator section with tuned bandpass filters.
For a full explanation of the signal path within the PRP Voyager and a technical explanation of the PRP algorithm have a look at [this paper](https://drive.google.com/file/d/17wcDL-Q0LQdMMcGF5-4zItFxYIVbkNK9/view) published at the International Computer Music Conference 2020.

### From gen~ to Bela

The PRP algorithm was first prototyped by Fedde using Max/MSP's [gen~](https://docs.cycling74.com/max7/refpages/gen~) object. Fedde met Ward during his internship at [STEIM](https://steim.org/) and he took up the job of rewriting the gen~ patch into c++ code which could run on Bela. From that point they brainstormed together about what the final instrument should be capable of and which parameters needed to be exposed to the performer.

## Creating the hardware instrument

The embedded hardware instrument was created in collaboration and as way of physicalising and making playable the parameters of the PRP algorithm.

{% include single-image.html fileName="prp-voyager/performing.jpg" caption="" %}

To begin the parameters that are derived from the pitch, carrier and resonator sections are set with the rotary encoders.

{% include double-image.html left="prp-voyager/knobs.jpg" right="prp-voyager/joysticks.jpg" caption="Rotary encoders on the left with inbuilt LEDs. On the right the joysticks which are used for morphing between parameter sets." %}

One creates multiple parameter settings that can be stored as a preset on the four corners of a joystick. One can then morph in between these presets by moving the joystick from one position to the other.

{% include double-image.html left="prp-voyager/slaned-view.jpg" right="prp-voyager/back-and-joysticks.jpg" caption="On the left the LCD screen for feedback can be seen. On the right some fo the many outputs from the instrument are visible." %}

Each one of the six tracks has its own joystick with control voltage inputs for both the X and the Y axis, an audio output and a trigger output. An LCD screen assists in precisely editing the synthesis parameters and storing the total machine state of all the tracks.

{% include single-image.html fileName="prp-voyager/live-setup-1.jpg" caption="PRP Voyager being interfaced with other music controllers and a joystick." %}

The PRP Voyager can also be interfaced extensively with other bits of hardware to expand the possible controls even further. OSC (Open Sound Control) messages can be sent to the instrument to control many of the parameters that are exposed in the hardware including pitch and global output controls.

## About Fedde ten Berge

[Fedde ten Berge](http://www.feddetenberge.nl/) is an Amsterdam based sound artist who creates work across different contexts and disciplines. Fedde worked as the artistic coordinator at the highly renowned and much missed [STEIM](https://steim.org/) in Amsterdam which has served as an essential institution for the development of electronic arts in the past 50 years. At Bela we are very sad to see this hub of experimental instrument design, which has trained many brilliant minds, close. We have previously showcased other instruments and installations build by Fedde on the Bela blog. See his [ensemble of instruments: of nature and things](https://blog.bela.io/2017/12/12/fedde-ten-berge-instruments-bela/).

## About Ward Slager

[Ward Slager](https://wardslager.com/index) is a Dutch sound artist, creative system designer and electronic musician. With a strong interest in algorithmic music, sound and bringing this into the physical domain he works on a variety of instruments, installations and other works. Within his practice he writes his own software, designs custom electronic circuits and constructs whatever needed to achieve said works.
