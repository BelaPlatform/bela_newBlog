---
layout: post
title: "Giraf by Hjalte Bested Møller: a polyphonic sampler built using Bela"
date: 2018-07-15
categories:
  - "Hardware"
  - "Instruments"
  - "Projects"
description: "Giraf by Hjalte Bested Møller: a polyphonic sampler built using Bela"
image: giraf/insides.jpg
author: bela
hidden: true
---

In this post [Hjalte Bested Møller](https://www.facebook.com/tromleorkestret/) introduces us to Giraf, a polyphonic sampler built using Bela. The instrument uses an IR distance sensor, a piezo disc, and embedded speakers to create a great mobile sampling unit. Over to Hjalte:

{% include youtube.html youtube="huHpao-UUPo" %}

## Hardware

The instrument implements a polyphonic sampler that can be triggered by hitting the “sound trigger” pad, with the amplitude of the sound being determined by how hard the pad is struck. The pitch of the triggered sample is controlled by a Infra-red distance sensor, in such a way that the further the hand is from the sensor, the lower the pitch. Instead of having continous control, the  pitch that is actually played is determined in relation to a selected musical scale. 

{% include single-image.html fileName="giraf/insides.jpg" %}


## Effects 

Giraf has multiple built-in effects.

- **FX1 – Sampler Gain**
- **FX2 – Biquad Filter**
	- The button switches between: Bypass, Lowpass, Highpass and Resonant Bandpass
	- The knob controls the cutoff frequency. 
- **FX3 – Feedback Delay Line** 
	- The button switches the effect on/off 
	- The knob controls the delay time 
- **FX4 – Reverberator**
	- The button switches the effect on/off 
	- The knob controls how much signal goes to the room
	- The action buttons playback the performance in reverse, with the right button resulting in normal pitch and the left button in double pitch and tempo 

{% include single-image.html fileName="giraf/Giraf_Block_Diagram-2.png" %}

**The Looper:** 
When the green button is pressed once, sound is recorded until the button is pressed again, which starts overdub mode. When no more overdubbing is required, the button can be pressed a third time to enable playback mode. The red button clears the buffer and prepares the looper for a new recording. 

{% include single-image.html fileName="giraf/top-labels.jpg" %}


## Software

The code implementation is written in C++ using the browser-based Bela IDE, which is running on a server on the Bela itself – no internet required. The sampling rate is 44.1 kHz and with a block size of 16 samples with ~1 ADC sample conversion delay ~1 samples transmission (SPI) delay 32 samples due to the dual buffering (16 samples per buffer) ~1 transmission (McASP) delay 21 samples DAC converter filter group delay That adds up to ~66 samples, that is - at 44.1kHz - 1.5ms of latency from trigger to the sound comes out !!! Thank you Bela !!

{% include single-image.html fileName="giraf/side.jpg" %}

## About Hjalte Bested Møller

Hjalte Bested Møller started making electronic music about 20 years ago.
From 2006-2009 he was part of the cyber-jazz project "Badun" where he got into sound design and programming with MaxMSP and SuperCollider.
In 2012 he started the interactive music/tech art performance project "Tromleorkestret".
He is currently refining his technical skill and studying for as a Civil Engineer in Robotics and Electrotechnology at the Technical University of Denmark where he also teaches DSP, and uses Bela to do so.

{% include single-image.html fileName="giraf/hjalte.jpg" %}

Thanks to Hjalte for sharing this great project with us!




