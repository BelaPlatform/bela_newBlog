---
layout: post
title: "Sverm-Resonans: interactive installation with resonating guitars and Bela"
date: 2018-03-02
categories:
  - "Software"
  - "Hardware"
  - "Projects"
  - Installations
description: "Sverm-Resonans: interactive installation with resonating guitars and Bela"
image: sverm-resonans/guitars-hanging-2.jpg
author: bela
---

Sverm-Resonans is an interactive installation developed for the [Ultima Contemporary Music Festival](http://ultima.no/) in Oslo which features 6 suspended guitars, each fitted with an actuator, distance sensor and a Bela.

{% include single-image.html fileName="sverm-resonans/installation-in-action.jpg" %}

## Conceptual grounding

This installation is an exploration of human micromovement and musical microsound that gives its audience access to heightened sensations of stillness, sound and vibration.

{% include youtube.html youtube="fhTuI3AhZL0" %}

Unlike traditional instruments, these guitars are played by the audience member trying to hold their body still in front of the hanging instrument: the minute movements of their body interact with the electronic system that attaches to the physical body of the acoustic instrument. Sverm-Resonans explores the meeting points between the micromovement of the audience member and that of the instrument, between the body and the mind, and between motion, stillness and sound. Audience members are encouraged to place their hands on the instrument and to try and focus on their weight resting on the instrument – the tactile, kinaesthetic, and aural experience of the their body in contact with the resonating body of the guitar.

> "Stand still. Listen. Locate the sound. Move. Stand still. Listen. Hear the tension. Feel your movements. Relax. Stand stiller. Listen deeper. Feel the boundary between the known and the unknown, the controllable and the uncontrollable. How does the body meet the sound? How does the sound meet the body? What do you hear?"


## Technical details

The technical setup of Sverm-Resonans is focused on the meeting point between digital and acoustic sound making. This was achieved by equipping each guitar with a Bela board, an infrared distance sensor, an actuator, and a battery pack. There are no external speakers, with all the sound being generated by the actuator vibrating the body of the acoustic guitar.

{% include single-image.html fileName="sverm-resonans/actuator.png" %}

{% include single-image.html fileName="sverm-resonans/bela-guitar-stock.png" %}	

Each of the guitars produce a slowly pulsing sound - based on an additive synthesis with a slight randomness on the sine tones - that breathes and gives life to the soundscape.
The guitars were instrumented with an infrared sensor that detects the presence of a person standing in front, and which inversely controls the amplitude of a pulsating noise signal. That is, the longer you stand still, the more sound you will get.
This proximity sensor has an analog output that varies from 2.8V at 15cm to 0.4V at 150cm and
requires a supply voltage between 4.5 and 5.5VDC provided by the Bela through its P9-7 pin.
The sensor output is connected to the Bela’s analog input and is sonified.

{% include single-image.html fileName="sverm-resonans/signal-path-boxes.png" %}	

The system was designed so that a person has to stand in front of the guitar (detected by the sensor) for some time before it starts producing sound. The limited horizontal range of the sensor further restricts the motion of the person standing in front, creating the sensation of needing to standstill in order to fully interact with the system.

{% include single-image.html fileName="sverm-resonans/bela-guitar-face.jpg" %}	

[Pure Data](https://github.com/BelaPlatform/Bela/wiki/Running-Puredata-patches-on-Bela) was used for the sound design. The installation patch running from the Bela had two layers of sound, one pulsating ‘drone’ that was present all the time and an inversely controlled ‘breathing’ sound that the users would interact with. The ‘drone’ was programmed with a simple additive synthesis, modulated through a low frequency oscillator, giving the drone a relaxed and pulsating feel. The second layer of sound was programmed with a noise generator modulated with a low frequency oscillator resembling breathing. This sound was controlled inversely with an amplitude ramp that started when the sensor detected a person standing still. The maximum sound level would be reached after one minute of standstill.

## The installation

{% include single-image.html fileName="sverm-resonans/guitars-hanging.jpg" %}	

The installation was running for a week during the [Ultima Contemporary Music Festival](http://ultima.no/). A number of people passed by, and approximately 200 people interacted with the guitars.

> "This project allowed the exploration of both technological and artistic concepts, with a clean, fast, and efficient setup made possible through the Bela platform. Unlike our early prototypes that used laptops and amplifiers with wired connections, we were now able to assemble completely independent, lightweight, and battery-powered augmented guitars that worked flawlessly during a week in a professional installation context."

The installation was created by [Alexander Refsum Jensenius](https://www.hf.uio.no/imv/english/people/aca/tenured/alexanje/index.html), [Kari Anne Vadstensvik Bjerkestrand](https://www.kariannebjerkestrand.no/), [Victoria Johnson](https://victoriajohnson.no/), [Victor Gonzalez Sanchez](https://www.hf.uio.no/imv/english/people/aca/temporary/vesanche/), [Agata Zelechowska](https://www.hf.uio.no/imv/english/people/aca/temporary/agatazw/index.html), and [Charles Martin](https://www.mn.uio.no/ifi/english/people/aca/charlepm/index.html). The group have submitted a paper to the [New Interfaces for Musical Expression (NIME)](http://nime2018.org/) conference this year, where they hope to present the project. The installation is the result of the ongoing art/science research projects [Sverm](https://www.uio.no/english/research/groups/fourms/projects/sverm/), [MICRO](https://www.hf.uio.no/imv/english/research/projects/micro/index.html) and [AAAI](https://www.hf.uio.no/imv/english/research/projects/acoustically-active-augmented-instruments/index.html), three projects which in different ways explore human micromotion and musical microsound. Supported by University of Oslo, Research Council of Norway, Arts Council Norway, The Fund for Performing Artists, The Audio and Visual Fund, and The Nordic Culture Fund.