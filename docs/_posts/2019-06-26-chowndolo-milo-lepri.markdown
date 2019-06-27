---
layout: post
title: "The Chowndolo by Giacomo Lepri & Alessia Milo "
date: 2019-06-26
categories:
- "Projects"
- "Hardware"
- "Instruments"
description: "The Chowndolo by Giacomo Lepri & Alessia Milo "
image: chowndolo/header.jpg
author: bela
---


The Chowndolo is an Interactive Sonic Sculpture based on a magnetic pendulum whose trajectories are altered by magnets placed underneath the device. This creates unstable patterns of oscillation which are translated into synthesis parameters and sound.

{% include single-image.html fileName="chowndolo/ChowndoloScaled.jpg" %}


## Pendulum Motion

The Chowndolo was conceived as an interactive experience: the scuplture can be played like an instrument and audience participation is crucial. The magnets below the pendulum can be arranged to compose new shapes: different configurations will modify the pendulum oscillations and the generated sonorities. The unstable patterns produced by the pendulum oscillations are transformed into sound, articulating a music that evolves based on the pendulum's motion.

{% include vimeo.html vimeo="325707625" %}


## Magenetic Fields and Frequency Modulation

The magnetic fields and their interactions are revealed through nuanced tones, acting as counterpoint to the pendulum's dance. The installation aims to make visible the invisible, letting us feel forces that we are not able to perceive.
The sounds generated are entirely based on FM synthesis whose sound parameters are controlled by sensing the variations in the magnetic field. According to Faraday’s law of induction, a variation in the magnetic field generates an induced electromagnetic force. This force is then amplified by a custom-designed preamp and the resulting signal is sent to a Bela board where it is processed before the  audio being sent to the output.

## John Chowning

The Chowndolo is a tribute to John Chowning, a pioneer in the field of Computer Music mostly known for his electroacoustic compositions, the discovery of FM synthesis and research on voice and instrument synthesis. 
During the development of the Chowndolo, we were lucky enough to welcome John Chowning to our lab and show him the project. He provided precious comments for the improvement of both the sensing technique and the FM synthesis implementation.

{% include single-image.html fileName="chowndolo/Chowning_01.jpg" %}

The Chowndolo was created by [Giacomo Lepri](http://www.giacomolepri.com/) and [Alessia Milo](http://www.alessiamilo.com/).

