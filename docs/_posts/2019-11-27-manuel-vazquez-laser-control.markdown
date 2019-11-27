---
layout: post
title: "Electromagnetism and the Production of Light"
date: 2019-11-27
categories:
- "Projects"
- "Instruments"
- "Synths"
description: "Electromagnetism and the Production of Light"
image: vazquez/spread-01.jpg
author: bela
---

Alongside generating and controlling sound, the high resolution analog outputs of Bela are also perfectly suited for controlling light.
In this post [Manuel Vázquez](https://www.mnlvqz.com/) describes his work S.R.T.A.E.E.P.E.L.S. which brings together lasers, sound and electromagnetism to create an enchanting interactive installation.

{% include single-image.html fileName="vazquez/laser-circles.gif" %}

# Vector Tracing and Sound Synthesis

Sistema Reactivo de Transmutación y Amplificación de Energía Electromagnética para la Producción de Estímulos Lumínicos y Sonoros
(Reactive Transmutation and Amplification System of Electromagnetic Energy for the Production of Light and Sound Stimuli) is an interactive experience
that transforms the participant's hands into "electromagnetic-audiovisual transductors".

{% include single-image.html fileName="vazquez/spread-01.jpg" %}

This installation creates a space for reflection on our perceptual capabilities, and on the discreet presence of electromagnetic fields in our everyday life. This project was supported by FONCA Young Creators Grant 2018/2019 in the New Technologies category and was presented at San Ildefonso College (Mexico) on October 27th 2019.

# Development

S.R.T.A.E.E.P.E.L.S. was fully developed using the Bela environment and Pure Data. This project can be divided in three main parts: sound, visuals and interaction.


## Recording Electromagnetic Fields

This project's main goal was to create an interactive experience that could emphasise the basic principles of electromagnetism and how they exist in our everyday life. The first step was to listen to the electromagnetic fields that surround us and record them. Using a Bela board and different kinds of inductors, a provisional "electromagnetic sound recorder" was created in order to document the fields that are created by everyday electronic
devices (PCs, cables, cellphones, lights, toys, etc).

{% include single-image.html fileName="vazquez/sample-code.jpg" %}

These recordings created a sample library that was used for the final work. In the installation the sounds were processed in real time in Pure Data using granular synthesis, delays and reverb.
These processes manage to maintain the essence, textures, timbre and dynamics of the original recordings, while transforming them into something else.

## Laser Tracing

A custom Bela/ILDA interface was developed to drive a RGB laser with audio signals – this allows the creation of sound reactive visuals in a manner that is similar to an oscilloscope. The visuals themselves, alongside the sound generation, were created using Pure Data which was in turn controlled by the interactions of the audience.
The colours and shapes of the laser correspond to characteristics of the current sound.

{% include double-image.html left="vazquez/laser-grid.gif" right="vazquez/laser-butterfly.gif" %}

This interface is currently being finalised as a Bela add-on for future laser projects – you can see the latest revision of the PCB design in the picture below.
This part of the project led to many experiments with different patches and processes for creating laser visuals using the Bela platform.

{% include single-image.html fileName="vazquez/interface.jpg" %}

## Interaction with the System

The whole system is integrated inside a wood box The interface which the audience manipulate is based on a single wire. This wire allows the audience to interact with the installation by grabbing, stretching or bending it. This adds a degree of expressivity to the system, with the manipulation of the wire influencing both the visuals and the sound processing.

{% include youtube.html youtube="W2pUnqTO7Ho" %}

Each interaction with the system becomes unique due to constant changes in the variables involved: even the number of people near to the box have an impact on the whole system by changing the capacitance of the wire. The decision to use a single wire as the interface was based on reducing the number of processes and elements between the audience and the phenomena and keeping the control direct.

{% include youtube.html youtube="Ooft8vMBHuo" %}

# About Manuel Vázquez

Manuel Vázquez, born 1993 in Estado de México, is a Mexican musician and digital artist. His works are based on interactive design, technological development and experimental music production, emphasising the interrelationships established between interactive, visual and sound experiences. To see more of Manuel's work visit his [website](http://www.mnlvqz.com) or [instagram](https://www.instagram.com/mnlvqz). Thanks to Manuel for sharing this excellent project!
