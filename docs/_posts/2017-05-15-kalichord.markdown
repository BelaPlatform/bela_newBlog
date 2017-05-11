---
layout: post
title: "Kalichord Strum by Dan Moses"
date: 2017-05-15
categories:
  - Projects
  - Instruments
  - Hardware
description: "The Kalichord Strum is an instrument designed to offer nuanced rhythmic strumming to keyboardists."
image: kalichord/image5.jpg
author: dan
---
 
The Kalichord Strum is an instrument designed to offer nuanced rhythmic strumming to keyboardists.  In this post, creator Dan Moses explains the design and thinking behind this innovative new instrument.

{% include youtube.html youtube="mZksorXIOxM" %}

The Kalichord Strum is a new instrument designed to offer keyboardists an intuitive and expressive way to play rhythmic strumming parts in real time.  Implemented using Bela, the current prototype features five uniquely shaped tines that the user strums and plucks while fingering notes on a MIDI keyboard.  The interplay between the tines and the keyboard make it easy to play rhythmic features such as pull-offs and  “dead-strums”, creating a very rich strumming palette.  It also features a multichannel looper designed to loop just the pluck signals, simplifying the strumming performance and freeing the strumming hand for playing basslines. The Kalichord Strum was a finalist in the [2016 Guthman Musical Instrument Competition](https://guthman.gatech.edu/).

## Tines

{% include single-image.html fileName="kalichord/image5.jpg" %}

The tines each feature a piezoelectric pickup and utilize a hybrid acoustic-electric physical modeling sound synthesis found in its predecessor, the Kalichord (read about the original Kalichord [here](http://bit.ly/kalichord)).  Signals from a piezoelectric pickup on each tine are used as excitation signals for a digital physical model of a string, creating a nuanced and expressive plucking interface.  The unique shape of the tines gives them different acoustic colors when plucked in different places, and they are arranged in alternating orientations to facilitate easy strumming of one, two, or three tines at a time.  

The audio signal from the tines is connected to a preamplifier to clean up the signal and then routed into the audio and analog inputs on Bela.  Future versions will almost certainly make use of the audio expander capelet, which was not available at the time.

{% include single-image.html fileName="kalichord/image4.png" %}

## Keyboard

The Kalichord Strum was designed so that one hand strums while the other hand plays notes on a MIDI keyboard.  However, we also wanted it to be able to be played without an attached keyboard, so we added a capacitive-sensing tactile keyboard, with a mirror image keyboard one octave down to increase the note reach of a single hand.

{% include youtube.html youtube="MzCIdw6" %}

{% include single-image.html fileName="kalichord/image1.png" %}

The keyboard is positioned to look something like guitar frets.

{% include single-image.html fileName="kalichord/image2.png" %}

The nail keyboard is connected to an MPR121 board, which communicates with Bela using i2c.

{% include single-image.html fileName="kalichord/image3.png" %}

## FUN WITH NOTE LOGIC:

A note logic block distributes the signals from the tines to the various physical string models.  This allows us to do fun things like:

* DEAD STRUMS: When MIDI notes are released, strumming the tines result in a “dead-strum”, or percussive dampened strum sound.  This allows the user to play rhythmic strumming patterns with great nuance and expressiveness.
* OCTAVE DOUBLING: The user can choose one of the notes to be doubled and octave down, in the lower tine.  The result is a “drop-2” voicing, or “drop-3” voicing, to use the parlance of jazz orchestration.
* PALM MUTING: Palm-muting of the virtual strings is possible by means of MIDI data or by turning one of the rotary controls.

## LOOPER

We implemented a looper in a funny place - in between the input signals and the string models so that just the input strumming signal is looped.  This allows for changing chords, pull-off patterns and notes over a single loop.  It also frees up a hand to play basslines.

## PUTTING IT TOGETHER

A high level block diagram is shown below.

{% include single-image.html fileName="kalichord/image6.png" %}

The Bela board was an absolute dream of a prototyping platform.  We were able to implement the Kalichord Strum as a standalone instrument, focusing on on what we are interested in - instrument building - without getting bogged down by the mechanics of hardware management and signal plumbing.  We look forward to building the next generation of Kalichord Strum as well as other instruments with the help of the Bela board!

*This project was made using [Bela](http://bela.io), the [open-source](https://github.com/BelaPlatform/Bela) platform for ultra-low latency audio and sensor processing. Find out more on our [website](http://bela.io), buy Bela at our [shop](https://shop.bela.io), follow us on [twitter](https://twitter.com/BelaPlatform) or join our community and discuss this post on our [forum](https://forum.bela.io).*
