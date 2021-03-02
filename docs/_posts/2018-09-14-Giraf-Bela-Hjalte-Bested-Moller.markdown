---
layout: post
title: "Giraf by Hjalte Bested Møller: a self-contained polyphonic sampler"
date: 2018-09-14
categories:
  - "Hardware"
  - "Instruments"
  - "Projects"
description: "Giraf by Hjalte Bested Møller: a self-contained polyphonic sampler"
image: giraf/insides.jpg
author: bela
---

This post introduces Giraf, a polyphonic sampler created [Hjalte Bested Møller](https://www.facebook.com/tromleorkestret/). The instrument uses Bela in combination with a distance sensor, piezo disc, and embedded speakers to create a mobile sampling unit that is somewhere between a classic sampler and a theremin! Over to Hjalte:

{% include youtube.html youtube="huHpao-UUPo" %}

## The instrument

The basis of Giraf is a polyphonic sampler where a sample can be played by hitting the “sound trigger” pad -- the amplitude of the sound is determined by how hard the pad is struck. 
The pitch of this triggered sample can then be controlled by a infra-red distance sensor, in such a way that the further the hand is from the sensor, the lower the pitch. Instead of having continous control, the  pitch that is actually played is determined in relation to a selected musical scale making harmonically related results easier to acheive.

{% include single-image.html fileName="giraf/top-labels.jpg" %} 

## Signal path and effects 

{% include single-image.html fileName="giraf/Giraf_Block_Diagram-2.png" %}

Alongside the main sampler Giraf has multiple built-in effects.

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

- **The Looper:** 
	- When the green button is pressed once, sound is recorded until the button is pressed again, which starts overdub mode. 
	- When no more overdubbing is required, the button can be pressed a third time to enable playback mode. 
	- The red button clears the buffer and prepares the looper for a new recording. 

## Software and technical notes

The code implementation is written in C++ and it was programmed using the browser-based Bela IDE, which runs on a server on the Bela itself – no internet required. 
Using C++ and working with Bela allowed me to keep everything very fast and responsive. There was a total of ~66 samples group delay, that is - at 44.1kHz - 1.5ms of latency from trigger to the sound coming out: thank you Bela!!!

{% include single-image.html fileName="giraf/insides.jpg" caption="The insides of the instrument." %}


## About Hjalte Bested Møller


Hjalte Bested Møller started making electronic music about 20 years ago. From 2006-2009 he was part of the cyber-jazz project “Badun” where he got into sound design and programming with MaxMSP and SuperCollider. In 2012 he started the interactive music/tech art performance project [Tromleorkestret](https://www.facebook.com/tromleorkestret) where he got into microcontroller programming, using mainly Arduino to create custom interfaces to his Max and SuperCollider patches. He is educated as a Civil Engineer in Robotics and Electrotechnology at the Technical University of Denmark where he currently works on the development of teaching material for a DSP course. The material is focused on embedded audio and the Bela is the platform used in the course.

{% include single-image.html fileName="giraf/hjalte.jpg" caption="Hjalte in performance mode with Tromleorkestret." %}

Thanks to Hjalte for sharing this project with us!




