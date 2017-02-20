---
layout: post
title: "Scottish Bela Workshops 2017"
date: 2017-02-20
categories:
  - Workshops
description: "Scottish Bela Workshops 2017"
image: scottish-workshops/zither-bela-header.jpg
author: robert
---

In February 2017 we organised workshops in Edinburgh and Glasgow in collaboration with [Edinburgh College of Art](http://www.eca.ed.ac.uk/reid-school-of-music/postgraduate/taught-degrees/sound-design-msc) and the [Music Department at Glasgow University](http://www.gla.ac.uk/postgraduate/taught/sounddesignaudiovisualpractice/). 

{% include single-image.html fileName="scottish-workshops/breadboard.jpg" caption="The workshop kit we used to build up the circuits." %}

The purpose of these workshops was to give a one-day introduction to instrument building with Bela using [Pure Data](https://puredata.info/). For these workshops we created a new set of examples that guide participants through some of the first steps in creating interactive sound devices. We did so with a base set of sensors that we have in our workshop kit. The examples and wiring diagrams, which are continually evolving, can be found on this branch of the main repo: [https://github.com/BelaPlatform/Bela/tree/dev-workshop](https://github.com/BelaPlatform/Bela/tree/dev-workshop).

{% include single-image.html fileName="scottish-workshops/edinburgh-workshop.jpg" caption="The workshop in Edinburgh." %}

In Edinburgh we ran the workshop with PhD students and students on the [MSc Sound Design](http://www.eca.ed.ac.uk/reid-school-of-music/postgraduate/taught-degrees/sound-design-msc) course. [Martin Parker](http://www.tinpark.com) and [Jules Rawlinson](http://www.pixelmechanics.com), who lead the course, also took part in the workshop. A few weeks before [Andy Farnell](http://aspress.co.uk/sd/), one of the founding fathers of procedural audio and interactive sound design with Pure Data had visited the department -- it was perfect timing for us to demonstrate how Bela can be used to bring sound models created in Pure Data to life with various sensors. In Glasgow we were hosted by [Nick Fells](http://nickfells.net/) and [Louis Harris](http://www.louiseharris.co.uk/) and again gave the workshop to a great bunch of masters and PhD students. 

{% include single-image.html fileName="scottish-workshops/glasgow-workshop.jpg" caption="The workshop in Glasgow." %}

The workshops began with an introduction to Bela and to the world of embedded digital audio systems. We then quickly progressed onto practical examples, populating the breadboard with various components as we went. Beginning with digital inputs and outputs used to control Flashing LEDs in time with a synthesised kick and snare, the workshop then moved on to guide the participants through analog sensors of various types (potentiometers, light dependent resistors, force sensitive resistors) and we explained how to put them to musical use in the design of an instrument. In terms of sound design, the workshop covered AM and FM synthesis, sequencing and sampling -- all controlled with the sensors we had wired up. We also introduced the participants to the principles of sensor mapping and circuit debugging using the built-in oscilloscope that comes as part of Bela's browser-based IDE. Although this may seem like a lot of material to go through in 5 hours the accessibility of the Pure Data coding language and flexibility of Bela makes it easy to achieve complex results quite quickly.

{% include single-image.html fileName="scottish-workshops/puredata-workshop.png" caption="One of the examples we used in the workshops with the tasks we worked through on the right-hand side." %}

To round up our two days in Scotland we then had the pleasure of participating in an evening of experimental music organised by [Sebastian Lexer](http://sebastianlexer.eu/) at [Stereo](http://www.stereocafebar.com/) in the centre of Glasgow. Sebastian is a very talented improvisor and has performed with some of the best free improvisors on the circuit. He normally performs on piano extended with live electronics but for this concert Sebastian used Bela as part of a set up that involved a zither and the OSC controller app that he has recently released [Parat+](https://itunes.apple.com/us/app/parat+/id997497361?mt=8). Developed from his experience as a live performer Parat+ is an Open Sound Control (OSC) and MIDI app for musicians and artists working with audio and visuals using different software and hardware devices and those seeking to extend their flexibility with technology. At once a controller, an interface, and an instrument, Parat+ offers spontaneous and sophisticated multitouch gestural control to perform and interact in precise, yet efficient and intuitive ways. 

{% include single-image.html fileName="scottish-workshops/parat.jpg" caption="Parat+" %}

On this occasion Sebastian was using Parat+ as an OSC controller for a granulator running on Bela -- they communicated to each other via WI-FI. Contact mics attached to the zither were fed into Bela's audio input where the sound of the zither was captured and played back in grains with Parat+ providing detailed control of all the parameters without the need for additional hardware. Here's a video of the Instrument in action:

{% include youtube.html youtube="zbYRjyK_5g0" %}

{% include single-image.html fileName="scottish-workshops/zither-bela.jpg" caption="Sebastian Lexer's setup for the performance involving an extended zither, a granulator running on Bela and an OSC controller running with Parat+." %}

The night also included performances from [Neil Davidson](http://neildavidsonevents.blogspot.co.uk/) on guitar, [Nick Fells](http://nickfells.net/) on shakuhachi flute, Giulio Moro on [d-box](http://blog.bela.io/2016/11/28/dbox/), [lil data](http://data.pcmusic.info/) live coding, and [Instruo](http://www.instruo.media/modules/) on modular synths. An excellent end to an excellent two days of workshops.

{% include single-image.html fileName="scottish-workshops/final-improv.jpg" caption="An improvisation involving Instruo, lil data and Giulio Moro." %}

{% include single-image.html fileName="scottish-workshops/giulio-dbox.jpg" caption="Giulio improvising on the d-box." %}