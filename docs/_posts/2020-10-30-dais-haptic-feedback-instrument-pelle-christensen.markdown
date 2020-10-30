---
layout: post
title: "The Daïs: A Haptically Enabled Electronic Instrument"
date: 2020-10-30
categories:
  - Instruments
  - Hardware
  - Synths
description: "The Daïs: A Haptically Enabled Electronic Instrument"
image: dais/header.jpg
author: bela
---

The daïs is an open source new electronic instrument created by Pelle Christensen which integrates physical modelling and haptic feedback into a new instrument with an identity all of its own.

{% include youtube.html youtube="Zl-xNjUgyLA" %}

# Bowed string synthesis

The daïs is an open source electronic musical instrument which generates sound by simulating a bowed string. The instrument features a disk that is suspended using rubber string and is played by pushing down and moving this disk around.

{% include single-image.html fileName="dais/dais.jpg" %}

Multiple parameters to be controlled with a single movement, and the gestures afforded by the instrument encourage a performative playing style. The disk is also haptically enabled using vibrotactile transducers which allow performers to feel the instrument's sound.

## Playing the instrument

The instrument is played via a main disk which is suspended by rubber string and an external MIDI keyboard is used for note selection. The position and angle of the disk is captured by sensors and can be used to control sound synthesis algorithms or effects.

{% include single-image.html fileName="dais/test-setup.jpg" %}

To play a note you need to press down on the disk and tilt it towards yourself. The sound can be stopped by tilting the disk away from yourself or can be let to ring out by letting go of the disk. By tilting the disk from side to side vibrato can be added to the note and it is also possible to tap the side of the instrument for percussive effects.


## Sensors and actuators

The disk displacement is measured using an infrared distance sensor, whereas the tilt of the disk is measured with an accelerometer.

{% include single-image.html fileName="dais/instructions.jpg" %}

On the underside of the disk there is a haptic actuator which vibrates the whole disk making it possible to feel the sound that you are playing. The instrument all runs on Bela making it self-contained.

## Prototyping process

The first prototype of this instrument consisted of cardboard, hot glue and rubber bands.

{% include triple-image.html left="dais/iteration-1-support.jpg" centre="dais/iteration-1-disk.jpg" right="dais/iteration-1-assembly.jpg" %}

The next round of prototypes was a bit more sturdy and made from laser cut MDF.

{% include triple-image.html left="dais/iteration-2-support.jpg" centre="dais/iteration-2-disk.jpg" right="dais/iteration-2-assembly.jpg" %}

Below is the final iteration of the design.

{% include triple-image.html left="dais/iteration-3-support.jpg" centre="dais/iteration-3-disk.jpg" right="dais/iteration-3-assembly.jpg" %}

## Building your own

This instrument is completely open source and Pelle has put all the source files, including the code, mechanical design files and bill of materials on his [github repo](https://github.com/PelleJuul/dais). If you build your own please get in touch with Pelle!

This instrument was also presented at the International Conference of New Interfaces for Musical Expression (NIME) 2020 and so if you would like to read more technical details about the instrument check out Pelle's [paper](https://www.nime.org/proceedings/2020/nime2020_paper119.pdf).

# About Pelle Christensen

The daïs was developed by Pelle Christensen as part of his studies at Aalborg University
Copenhagen with Dan Overholt and Stefania Serafin. To see more of Pelle's projects follow him on [instagram](https://www.instagram.com/p.j.christensen/).
