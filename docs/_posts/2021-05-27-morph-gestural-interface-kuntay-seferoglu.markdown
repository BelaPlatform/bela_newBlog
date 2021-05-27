---
layout: post
title: "MORPH is an electro-acoustic instrument for gestural sound design"
date: 2021-05-27
categories:
  - "Instruments"
  - "Hardware"
  - "Projects"
  - "Sound Design"
description: ""
image: morph/MORPH_4.JPG
author: bela
---

MORPH is a gestural electro-acoustic instrument that connects the body to objects in order to produce and manipulate sounds. This instrument was created by Kuntay Seferoğlu, a sound artist based in Istanbul, who will tell us a bit more in this post.

{% include youtube.html youtube="luvp0p3MzdY" %}

## The sound of objects

I wanted to find a compact solution for the setup needed when producing electro-acoustic content. I believe every object offers its unique sound and various ways of playing when treated as an instrument. I usually get excited by the sounds of objects I encounter during the day and thinking what they could be if they were processed.

{% include single-image.html fileName="morph/morph_t.jpg" caption="Morph capturing sound from a connected object." %}

For this reason I wanted to make a sound design tool that I can carry around, also a versatile one to change with the different occasions and materials. Thanks to Bela, it could be easily reprogrammed so I can experiment with different patches every now and then, it's not a product but a design journey that would never end.

## A live sound design tool

Also, I found most of the current interfaces of electronic instruments problematic when performing live. They don't communicate well enough with the performer and audience, being most of them boxes with knobs and buttons, the audience can't understand what the performer really does and how it affects the sound they hear.
Here's a video of MORPH being used in a live performance with the group Flelk.

{% include youtube.html youtube="8nKvCKUADgY" %}

### Hardware

MORPH works with an separate piezo microphone which can be connected to anything to capture sounds. Strapped to the arm of the performer there is another module with a gyroscope and accelerometer which are used to translate body movements into control parameters for the sound design. Inside the 3d printed case there is a Bela Mini which is running a Pure Data patch.

{% include single-image.html fileName="morph/MORPH_1.jpg" %}

## The instrument

### Software

As I mentioned before I like to change software often for different live situations. The main patches I use are based on audio processing effects because of audio signal coming from the piezo input. I usually use 3 different effects on x,y,z axis. Gyro sensor let's me blend between those effects in a way I could never imagine with a more traditional synth interface like knobs and dials.

### The future

MORPH (v.1) was designed and produced in 2019. I am currently working on version 2 where I will be updating its form after 2 years of user tests and experiments.  

{% include single-image.html fileName="morph/kuntay-morph.png" caption="A still from the video of Flelk where Kuntay performs with Morph." %}

## About Kuntay Seferoğlu

Kuntay Seferoğlu is a designer and sound artist based in Istanbul, he explores the interaction of sound and bodies (human and non-human) with design and performances. For more information see his [instagram](instagram.com/_kunsf) and [bandcamp](kunsf.bandcamp.com).
