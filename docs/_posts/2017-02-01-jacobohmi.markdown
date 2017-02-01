---
layout: post
title: "Making the ‘one-handed bass’ with Bela"
date: 2017-02-01
categories:
  - Hardware
  - Projects
description: "Making the ‘one-handed bass’ with Bela"
image: Jacob-OHMI/jacob-head.png
author: jacob
---
 
In this post Jacob Harrison introduces the one-handed bass, an instrument that mechanises the fretting hand of a bass guitarist using Bela and an array of solenoids.

{% include single-image.html fileName="Jacob-OHMI/1_FrettingMech_Gif.gif" caption="" %}

In summer 2016, we worked with the One-Handed Musical Instrument ([OHMI](http://www.ohmi.org.uk/)) Trust on a design project concerned with adapting the bass guitar for one-handed playing. Inspired by musical robotics projects, we decided to design and build a prototype solenoid-actuated fretting mechanism, which attaches to the neck of a bass guitar. The mechanism is controlled via MIDI, which allows a range of controllers to be used. As it’s a prototype device, we only used six solenoid motors on the 2nd 3rd and 4th frets of the A and D strings.
 
Initially, we used the Arduino-based Teensy microcontroller to drive the solenoid circuits. To get MIDI signals from our controller (an Arturia Beatstep) to the Teensy, we had a Puredata patch running on a laptop. This arrangement was great for early prototypes, but the necessity for an intermediate laptop affected the usability of the instrument. This is where Bela comes in. Bela can act as MIDI host, so we were able to cut out the laptop stage and have our MIDI controller interact directly with the Puredata patch on Bela. We used Bela’s analogue outputs to drive the solenoid motors, using the same circuitry as we had with the Teensy.
 
{% include single-image.html fileName="Jacob-OHMI/2_Signal_Path.png" caption="" %}
 
## Connecting solenoid actuators to Bela
 
Solenoids require a higher current than the Bela can provide, so we require an external power supply.  Here’s a schematic of the circuitry we used for a single solenoid channel. We used a TIP102 transistor to drive each solenoid:
 
{% include single-image.html fileName="Jacob-OHMI/3_Solenoid_Circuit.png" caption="Schematic of the solenoid driving circuit" %}
 
{% include single-image.html fileName="Jacob-OHMI/4_Breadboard_Annotated.png" caption="The final circuit on a breadboard" %}

## MIDI communication with Puredata
 
Listening for incoming MIDI messages and passing them to the analogue outputs requires a very simple Puredata patch. We used the `[notein`] object to listen for any incoming MIDI notes. We then used the `[sel`] object to extract MIDI notes corresponding to the buttons on the controller that we wanted to use. The arguments of the `[sel`] object are the MIDI note numbers we are looking for, and the outputs correspond to the order that these arguments are written. We then connect the outputs to corresponding `[dac~`] objects.
 
{% include single-image.html fileName="Jacob-OHMI/5_Puredata_Patch.png" caption="" %}

{% include single-image.html fileName="Jacob-OHMI/6_Beatstep_Mapping.png" caption="" %}

## Putting it all together
 
The fretting mechanism itself is made out of lasercut plywood, a few threaded metal rods, nuts, bolts, and a lot of cable ties. It is made up of eight clamps, which attach to either side of the neck. The threaded rod connects the clamps on either side of the neck, and provide a hinge for the laser cut fretting arms to rotate around. The clamps hold the solenoids perpendicular to the neck, and the tips of the fretting arms are attached to the solenoid plungers. Whenever the solenoid is activated, the fretting arm is pulled down, and presses the string onto the fretboard. A spring return at the base of each fretting arm pushes each arm back up to rest height to avoid brushing the strings when note in use.
 
{% include single-image.html fileName="Jacob-OHMI/7_mech.png" caption="" %}

Here’s a video of the finished system, first being played with the free hand, then with the feet:
 
{% include youtube.html youtube="k6tvavgYHDA" %}

*Did you enjoy reading this blog post? If so you can find out much more about Bela on our [website](https://bela.io), you can get your hands on a Bela board at our [shop](https://shop.bela.io) or you can join our community and discuss this post on our [forum](https://forum.bela.io).*
