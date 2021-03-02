---
layout: post
title: "SnoeSky: an ambient light-sensitive installation"
date: 2020-07-06
categories:
- "Projects"
- "Instruments"
- "Hardware"
- "Installations"
description: "SnoeSky: an ambient light-sensitive installation"
image: snoesky/blurry.jpg
author: bela
---

SnoeSky is an ambient light-sensitive installation designed by Andreas Förster and Christina Komesker which turns the ceiling of a multisensory relaxation room into an interactive night sky where the constellations ring out with sound.

{% include vimeo.html vimeo="412368397"%}

# Constellations of sound

In this post Andreas Förster and Christina Komesker present to you an accessible digital musical instrument (ADMI) in the form of a starry sky that can be played with a flashlight. The name SnoeSky is a concatenation of 'snoezelen' (dutch for snooze) and 'sky', because the ADMI integrates into the ceiling of a Snoezel-Room, a closed space that provides multisensory stimulation in a soothing atmosphere.

{% include single-image.html fileName="snoesky/SnoeSky_final_on.JPG" %}


# Background to the project

SnoeSky was developed for a German special educational needs (SEN) school focusing on intellectual disabilities. The project has been conducted as a collaboration between the College of Music in Trossingen, Furtwangen University and a local SEN school.

{% include single-image.html fileName="snoesky/Gif1.gif" %}

# Inspiration

The basic idea was to design an ADMI that fits within the context of the Snoezel-Room and which uses the technical elements available there. The room is designed for relaxation and multisensory stimulation and so it seemed appropriate to extend the room with audiovisual elements such as soothing sounds and gentle lights responding to slow movements.

{% include single-image.html fileName="snoesky/snoezel_room.JPG" %}

# The Hardware

The final prototype integrates 65 yellow LEDs (‘stars’) distributed over a black wooden surface of 1.2 by 1.2 meters fixed on the ceiling above the bed. The LEDs are arranged at the approximate positions of the principal stars of eight constellations.

{% include single-image.html fileName="snoesky/snoesky_test.png" %}

Each constellation has a corresponding photo resistor that is used to detect the light beam of a flashlight. Corresponding sounds are played over the audio system that also includes a subwoofer under a waterbed providing vibrotactile feedback.

{% include single-image.html fileName="snoesky/SnoeSky_final.JPG" %}


# The Software

This instrument was developed using Pure Data running on the Bela board. In the Pure Data patch one of eight note pitches on an overtone scale is assigned to each constellation. The sound production is based on a noise oscillator using resonant filters at the corresponding frequencies.

{% include single-image.html fileName="snoesky/gif3.gif" %}

The signal from the photoresistor triggers an envelope with a long release whose amplitude controls a pulse width modulation (PWM) output which controls the LEDs. In addition, there is a generative atmosphere sound created by continuously filtered noise.

A more detailed explanation of the instrument will be presented at [NIME 2020](https://nime2020.bcu.ac.uk/). The patch is available at [https://github.com/imui-org/SnoeSky](https://github.com/imui-org/SnoeSky).


# About Andreas Förster and Christina Komesker
Andreas Förster, born in 1989, is a German PhD Student who specialises in ADMIs for SEN settings. Christina Komesker, born in 1990, is a German SEN teacher. Both are members of the non-profit organisation imui e.V. For more information visit their website [http://imui.org](http://imui.org).
