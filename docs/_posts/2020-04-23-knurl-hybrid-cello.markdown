---
layout: post
title: "Reimagining the cello: Knurl by Rafaele Andrade"
date: 2020-04-23
categories:
- "Projects"
- "Instruments"
- "Hardware"
- "Installations"
description: "Reimagining the cello: Knurl by Rafaele Andrade"
image: knurl/header-1.jpg
author: bela
---

In this post artist and musician Rafaele Andrade introduces us to her instrument Knurl. An exploration of reprogrammable instruments, Knurl takes the form of a 16 string cello running SuperCollider at its core.

# Reimagining the cello in hybrid form

This project explores the idea of reprogrammability in musical creation. In a reprogrammable musical performance, as I imagine it, the musicians, audience, environment and musical instrument can all manipulate and interact with musical forms through structures of code.
I started this project in 2018 with the aim of building an instrument which could embody this concept, as a way of connecting sonic expression with digital dynamism.

{% include youtube.html youtube="TELqA96xlaI"%}


## Knurl: a reprogrammable instrument

The result of this exploration is Knurl, a reprogrammable hybrid cello with 16 strings, bow tracking and solar panels.


{% include single-image.html fileName="knurl/knurl-church.jpg" %}

The instrument has various modes of performance using synthesis, pitch detection, and analog sensing which are all brought together and run from the Bela board. Connected to Bela there are various sensors, microphones, speakers and solar panels which are used both for charging and as sensors themselves.

{% include single-image.html fileName="knurl/bridge-piece.jpg" %}

Knurl's circular form places the force of the strings between the neck and tailpiece, directing the sound into the neck's resonant chamber. Most of the electronic components are held in the tailpiece, encased in the solar panels. The different performance modes, which are programmed in SuperCollider, manipulate the sound through live processing and more musical compositional methods that relate to piece structure.

{% include single-image.html fileName="knurl/bow-screen.jpg" %}

As a way of keeping track of the processes running on the board I have a screen on the bow which streams parts of the code. Capacitive buttons (made with [Trill Craft](https://bela.io/trill)) are also attached to cavities in the neck and are used to trigger specific conditional functions.

## Development

The first version of Knurl was made from laser cut plywood and used a microcontroller and sensors. This has since evolved into its current form made from recycled rPET plastic which has 16 strings, is hybrid (both acoustic & electric), rechargeable and reprogrammable.

{% include single-image.html fileName="knurl/plywood-proto.jpg" %}

The name ‘Knurl’ (metal slippery surfaces with tiny grippy tips) comes from the apprehension involved in human body movement, from the friction on the performer's knees necessary to change the position of the instrument in relation to their body. It was also inspired by the way crickets grip their legs on a knurling surface to produce 'energy'.

### Solar charging and sensing

The instrument can charge itself via the photovoltaic solar panels around the base of the instrument. The panels provide charge for the whole instrument but at the flick of a switch you can change their functions to act instead as analogue sensors for controlling sonic parameters.

{% include single-image.html fileName="knurl/close-up-strings.jpg" %}


### Capacitive buttons

The capacitive buttons on the neck of the instrument allow you to change the settings of the instrument. They can select and trigger synths or initiate functions that process the sound of both the cello and the room. This instrument is geared towards live electronic performance in which the performer, other musicians and audience can be given opportunities to interact as the music unfolds in real time.

{% include single-image.html fileName="knurl/image3.jpg" %}


### Tuning of the strings

To create chords on Knurl different multiphonics and combinations of harmonics are possible across the strings. The tuning system can be adjusted to taste but my chosen tuning system is as follows:

{% include single-image.html fileName="knurl/tuning.png" %}

## Performing with Knurl

The practice of live coding in music is defined by its flexibility and rematerialization. By building a malleable structure, a block of code can be summarized, redefined, formatted, reshaped, reposed, rewired and therefore create new definitions. These are the guiding principles I worked into the SuperCollider code that runs on Knurl.

{% include youtube.html youtube="sdNBCL-eheQ"%}

## About Rafaele Andrade

{% include single-image.html fileName="knurl/rafaele-knurl.jpg" %}


Rafaele Andrade is a Brazilian artist and musician currently based in the Netherlands. Her work brings together live coding, open source approaches and instrument design and you can find out much more on her website: [https://www.rafaeleandrade.org/](https://www.rafaeleandrade.org/). This project was realized during Rafaele's time at the [Institue of Sonology](http://sonology.org/) at the Royal Conservatoire in the Hague and [Revspace hackerspace](https://revspace.nl/Main_Page).

A solo release of music made with Knurl is currently on Kickstarter: [http://kck.st/3ej87TF](http://kck.st/3ej87TF).

*A huge thanks goes to Rafaele for sharing this project with us.*
