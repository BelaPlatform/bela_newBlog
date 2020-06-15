---
layout: post
title: "Scatter: towering solar-powered rotating sound sculptures"
date: 2020-06-10
categories:
- "Projects"
- "Instruments"
- "Hardware"
- "Installations"
description: "Scatter: towering solar-powered rotating sound sculptures"
image: scatter/scatter-header.jpg
author: bela
hidden: true
---

Scatter is a series of 4-meter-tall rotating sound sculptures created by a team of artists and creative technologists at Griffith university in Australia. These immense solar-powered structures scatter sound in all directions via the speakers attached to either end of the rotating bar.

{% include youtube.html youtube="SetFeYcikxg"%}

# Rotational dynamics

Scatter 2019 is a solar-powered installation, sonic composition, and artistic research project by [John Ferguson](http://www.johnrobertferguson.com/),  [Erik Griswold](https://www.erikgriswold.org/), [Paul Bardini](http://paulbardini.com/), and [Daniel Della-Bosca](https://www.researchgate.net/profile/Daniel_Della-Bosca). Sound emanates from twelve loudspeakers that hang from six motorised rotors, which are each mounted at a height of four meters on a freestanding structure. By walking and listening beneath and between each mechanism, visitors experience a unique sonic adventure.

{% include double-image.html left="scatter/scatter-white.jpg" right="scatter/scatter-green-2.jpg" %}

{% include double-image.html left="scatter/scatter-green.jpg" right="scatter/scatter-pink.jpg" %}


Scatter 2019 is a playful embracement of rotational dynamics that also highlights the Doppler effect and celebrates the directionality of sound waves by exploring sound-in-motion. Each rotor is controlled by an embedded computer and microcontroller, the system is programmed to have periods of acceleration, deceleration, and pause. Computer-controlled lighting makes the installation effective at night and visually articulates the physics of sound while querying the relationship between sonic and visual modalities.

# What's inside

Various predefined compositional segments are activated by individually seeded random number generators so the length and order of each section is unpredictable, meaning the emergent composition is never the same twice. Each Scatter unit runs from a deep cycle battery that is charged by two solar panels, this enables Scatter to run after dark; in Brisbane during March sunset is before 6pm and the installation needed to run from 8am till 10pm every day, two solar panels provide sufficient energy to run the system and charge the batteries to full capacity before nightfall (this proved successful even when we experienced several wet and rainy days in a row).

{% include single-image.html fileName="scatter/scatter-h+s.jpg" %}

The sound-world is created digitally through a combination of audio samples and synthesis using graphical programming environment Pure data (Pd). This runs on a Bela, with audio, motor speed and direction of rotation, and LED lighting all controlled from the Bela boards. Additionally, a Teensy microcontroller is connected to Bela via the USB host port in order to access the Neopixel library and control the LEDs via MIDI from Pd.  A slip ring is utilised to feed power and signal through the motor axle to the moving rotor.

{% include vimeo.html vimeo="371152122" %}

# On show

The project was commissioned by [Tourism and Events Queensland](https://teq.queensland.com/) through [Brisbane Powerhouse](https://brisbanepowerhouse.org/) for the inaugural [Curiocity Brisbane Festival](https://curiocitybrisbane.com/). In March 2019 Scatter was installed in the South Bank Parklands for a period of three weeks. Over 1000 visitors a day interacted with the installation and during World Science Festival Brisbane approximately 3000 visitors per day were counted. Scatter 2019 appeared courtesy of [Queensland Conservatorium Research Centre](Queensland Conservatorium Research Centre ) and [Queensland College of Art](https://www.griffith.edu.au/arts-education-law/queensland-college-art) at [Griffith University](Griffith University).

{% include single-image.html fileName="scatter/scatter-logo.jpg" %}

For more information on this project including many more photographs and videos of the build process visit [the project page](http://www.scatterfields.com/).

# Listening Boxes

John Ferguson has also built other projects with Bela over the past couple of years including [Listening Boxes](http://www.johnrobertferguson.com/listening-boxes/), a sound installation where a set of antiquated library drawers function as instruments for sonic exploration.

{% include vimeo.html vimeo="294116456" %}

You can read all about this project [on his site](http://www.johnrobertferguson.com/listening-boxes/).
