---
layout: post
title: "UVTOWER: exploring post-rave cultures with spinning lasers and mirrors"
date: 2021-02-04
categories:
  - "Instruments"
  - "Projects"
  - "Sound Design"
  - "Installations"
description: "UVTOWER: exploring post-rave cultures with spinning lasers and mirrors"
image: uv-tower/00_Final_00.jpg
author: bela
---

In this post the creators of UVTOWER, Andrea Guidi and Giacomo Lepri, talk us through their generative installation and interactive performance instrument which produces dense post-rave music as it spins.

{% include youtube.html youtube="fgOZdpY2EBc" caption="Performance publicly broadcasted Sun Sep 13 on the Ars Electronica Voyages Channel." %}


# UVTOWER

UVTOWER is a generative musical system made of lasers and mirrors which reflects on the notion of growth through sound and interaction. The flow of the rhythm is traced in a circle by a laser beam situated at the top of a tower. The laser's reflection in the mirrors which surround it symbolises the system reflecting on itself and results in the creation of metaphoric echo chambers which scale-up exponentially to the point of making the system collapse and start anew. Adding and removing mirrors leads to the system generating denser/faster or rarefied/slower music structures prescribing its build-ups and falls.

{% include single-image.html fileName="uv-tower/03_Full_Structure_Prototype_AA.jpg" %}

From a technical perspective UVTOWER could be described as a musical sequencer made of lasers and mirrors which explores rhythm in electronic music through structural and sculptural relationships. Mirrors mark the beats at different positions around the circle. Adding and removing mirrors leads to the composition and performance of physical and musical structures. The project challenges notions of musical time and sequencers by offering alternative ways to compose and perform mutating patterns. The general aesthetic of the installation and sound design is informed by sonic objects from Hardcore and post-rave cultures.

# Playing UVTOWER

Performers interact with the installation by reflecting the laser beam which rotates on the top of the tower. Reflections are caused by installing the mirrors on top the sculptural stands. Each time that the laser beam is reflected an event is recorded by the system. Depending on the number of events detected over a rotation the system decides whether to increase or decrease the speed of rotation as well as what sounds it should produce and their characteristics.

{% include youtube.html youtube="6PotEL1l8J8" caption="Performance using the UVTOWER for EDEN POWER CORP at SLAMJAM ‘s  Spazio Maiocchi (Milano). Spazio Maiocchi is a social space at the intersection between art, design and fashion. Video by Alessandro Dalla Fontana." %}


# Sensors and actuators

The tower hosts six light dependent resistors. One sensor is located on the spinning portion (sensor A). Four additional sensors are placed one for each side of the tower (B,C,D,E). Sensor A is able to detect reflections coming from any mirror positioned in the structure (including the mirrors on each angle of the installation). The other sensors can only detect reflections coming from a mirror positioned in front of them.

{% include single-image.html fileName="uv-tower/close-up-hands.jpg" %}

The installation offers the possibility to operate the mirrors by hand or to insert them into fixed positions. Inserting the mirrors into the structure is the equivalent of inserting an event on a grid divided by eight steps (quantised in time). By operating a mirror by hand performers can produce a laser reflection (and so an event) at any point within time.

The signal captured by the sensors informs a custom algorithmic composition written in PD and running on Bela. The software maps sensor information to mechanical and sonic behaviour. On the mechanical side, depending on the number of reflections detected at each spin of the tower, the system decides whether to increase or decrease the speed or rotation.

# Sound design

With respect to sound, the sensor signals produced at sensors (B,C,D,E) are sonified in a way to resemble a kickdrum. The spin of the tower is sonified with a custom-designed "supersaw" oscillator with the speed of the tower's rotation controlling the pitch of the oscillator. More complex and quasi-deterministic behaviours (controlling the envelopes of the kickdrum and supersaw as well as the quantity of reverberation or low-pass filtering on the stereo output) can emerge depending on the combination of the sensors that register a laser reflection during a rotation. The software side also implements a timeline which can be assigned to control any sound aspect featured in the installation. Such a feature is meant to assist performances that could last over an extended period of time (more than ten minutes).

# Prototyping process

The prototyping process started by crafting a small-scale tower made of cardboard. The top of the tower hosted a laser beam and was able to rotate thanks to a motor. The motor and the laser beam was controlled by Bela. The tower also hosted one light-dependent resistor connected to Bela. A small mirror was used for testing the system's ability to detect the laser beam reflections with different types of acrylic mirrors, mirror distances, mirror positions and angulations. The mirror was moved and oriented by hand. The sensor signal behaviour in response to the interaction was notated by screen-recording Bela’s oscilloscope.

{% include single-image.html fileName="uv-tower/03_Full_Structure_Prototype_B.jpeg" %}

Further implementations of the prototype added seven more sensors to the tower. Then, a structure for placing the mirrors was designed. At this stage, the system was able to rotate the laser, hosting mirrors, detect laser reflections, and produce auditory feedback in response. The first audio tests also represented the first steps toward the sonic interaction design of the installation.

{% include double-image.html left="uv-tower/05_Towero_First_Prototype.jpeg" right="uv-tower/04_Tower.jpg" %}

The final version saw an increased physical size of the system and five sensors instead of the eight sensors initially planned.

{% include single-image.html fileName="uv-tower/02_Final_02.jpg" %}

# About the creators

**UVCORE (IT/GB)** is a music project of the Italian producer, and music researcher Andrea Guidi. UVCORE focuses on exploring and collecting sonic objects from Hardcore and post-rave cultures. Drawing influence and remediating these elements UVCORE makes installations and music to reflect on the contemporary age and to move toward alternative futures. Since the project's origin they have presented the installation DATA DREAMING (2019), and installation/performance UVTOWER (2020) both for the international art event ARS Electronica (AT). Both artworks explore time stretching-compression and circularity in human experience. UVCORE's first track RIVIERA has been included by the London-based label TREMORS in the compilation GLOBAL UNITY alongside artists such as LIL DATA (PC MUSIC). UVTOWER performance has also been presented as part of a commission from the environmentally-conscious fashion label EDEN POWER CORP at SLAM JAM's art space Spazio Maiocchi (Milano). 
Link: [instagram](https://www.instagram.com/uvcore_/).

**[Giacomo Lepri](http://www.giacomolepri.com/)** is a musician, composer and PhD student at Center for Digital Music (C4DM) researching creative media and exploring new forms of art production through digital materials. His artworks and research have been presented in vanues such as Institute of Sonology - The Hague, ZKM - Karlsruhe, IEM - Graz, Ars Electronica - Linz, STEIM - Amsterdam, IRCAM - Paris, Guildhall School of Music - London, China Conservatory of Music - Beijing, MediaLab Prado - Madrid, Bauhaus University - Weimar. Previous project: [Chowndolo](https://blog.bela.io/2019/06/26/chowndolo-milo-lepri/).
