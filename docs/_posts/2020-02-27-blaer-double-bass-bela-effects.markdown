---
layout: post
title: "Bela Features on BLAER's new album"
date: 2020-02-27
categories:
- "Projects"
- "Instruments"
- "Hardware"
- "Synths"
description: "Bela Features on BLAER's new album"
image: blaer/header-half.jpg
author: bela
---

Simon Iten, a long term Bela-user and [lokki](https://forum.bela.io/u/lokki) on the Bela forum has created a live effects box that made it onto BLAER's latest album. Over to Simon to tell us more.

# The Track: Arktis

Bela features on the track Arktis on BLAER's latest album which was originally composed about one and a half year's ago. When rehearsing the song it quickly became apparent that some non-instrumental acoustic sounds would help the overall mood and that's where Bela came in. In this version of the track a Bela running Pure Data is used to manipulate the sound of the piano in realtime.

<iframe style="border: 0; width: 700px; height: 820px;" src="https://bandcamp.com/EmbeddedPlayer/album=3594209295/size=large/bgcol=ffffff/linkcol=0687f5/tracklist=false/track=1747872086/transparent=true/" seamless><a href="http://roninrhythmrecords.bandcamp.com/album/yellow">Yellow by Blaer</a></iframe>



# Patching on Bela

After some hours of patching the initial version of the patch was ready. It consists of a granular stereo sampler which allows the performer to scan through the recorded sound either backwards or forwards and at any rate. There is an input buffer which constantly records the last 4 seconds of input and can be accessed at any time. Additionally three extra buffers can be recorded into, with up to 20 seconds of sound which can then be scanned or frozen. The fourth buffer is an internal one, which records the output of the patch pre-fx and is great for adding in more layering if needed.

{% include single-image.html fileName="blaer/3.jpg" %}

The second part was added a few days later and consists of a five slot live looping device with full control over pitch and forward/reverse playback. At the output stage there is sample-rate and bit-rate reduction, a tape delay with manual and tap-tempo function (both with a foot switch and with tempo based on your MIDI note input) and reverb in stereo. For the track Arktis only reverb was used, no delay or sample-rate/bit-rate reduction.

{% include single-image.html fileName="blaer/4.jpg" %}

The UI side of things consists of multiple buttons and a foot pedal that are read by Bela directly, a [Qunexus MIDI keyboard](https://www.keithmcmillen.com/products/qunexus/) for pitch and modulation input (direction and scan controlled via tilt and pressure) and an Arduino talking to Bela via USB-MIDI with two [SSH1306 OLED screens](https://github.com/adafruit/Adafruit_SSD1306) that show all the relevant states of the patch (active loops, their direction, recording status, buffer that is used when scanning through sounds etc). The USB ports, both host and client are broken out as well to facilitate reprogramming of the effect and to take strain off the PCB mounted connectors in “rough” gig situations. The patch runs happily on Bela compiled with heavy, but also works fine with the default libpd.


# Praise to Bela

As I have been working with Pure Data for a long time, the process of developing this patch for Bela was overall very smooth and most of my time was consumed by making sure it would compile with the heavy subset of objects. In hindsight this step was a bit premature, as the patch runs on with default libpd completely fine at about 70% CPU. Some initial quirks (attaching two midi devices to Bela for example) were [quickly solved on the forum](https://forum.bela.io/u/lokki). A big thanks goes out to Giulio Moro, he is always super helpful on there.

For me Bela is the perfect mix between a user friendly platform and a geeky one: you can dive deep but you don’t have to. Also the use of different languages is a huge bonus. Being able to use Pure Data embedded, but also SuperCollider and Csound alongside C++ is just huge and makes Bela a tool for so many different projects. I've almost finished my next one, a live vocal processor which uses heavy/PD, and LV2 Plugins both running on the Bela. These are very exciting times for musicians/hobby programmers like me!

# About BLAER

[BLAER](https://www.blaer.ch/) was founded in 2012 and bring together five members of the young Swiss jazz scene. Maja Nydegger on piano, Nils Fischer and Claudio von Arx on bass clarinet and saxophone, Simon Iten on double bass and Philippe Ducommun on drums. During a six-month stay in Denmark, Maja Nydegger composed the music for the first album in 2012, which the band released two years later on the Bern based label [Morpheus Records](https://www.morpheus-records.com/). With the debut album, BLAER played three tours with concerts in Switzerland and Germany and was nominated for the ZKB Jazz Award in 2015 as one of six young Swiss bands. In 2017, the band released their second album OUT OF SILENCE (Morpheus Records) and in the same year played a release tour with 25 concerts in Switzerland and Germany. 2018 followed a European tour with concerts in Switzerland, Germany, France and Belgium. In February 2020 the band released their third album YELLOW on Nik Bärtsch’s Label [Ronin Rhythm Records](https://roninrhythmrecords.bandcamp.com/). With the new album BLAER will play a release tour with 17 concerts in Switzerland and abroad.


# About Simon Iten

{% include single-image.html fileName="blaer/simon-iten.jpg" %}

Simon Iten was born and raised in Switzerland. He moved a lot in his childhood and shared a flat with his mother and two other families at some point. One of the family's father was a programmer/mathematician and introduced him to tcl/tk and some very basic c coding. As Simon grew up his interest in music became more and more apparent and at the age of 15 he picked up electric bass and never looked back. Studies at the conservatory of music in Lucerne led to a Master of Performance Arts in 2009. Since 2008 his interest in playing the double-bass emerged and he is now a freelance bassist working in Switzerland and Europe in such different Genres as Jazz, Pop and Classical Music. His interest in working with Computers/FX to interact with sound/music grew continuously, starting with soldering his own analog Bass-FX devices, using Pure Data on stage with a laptop and meandering slowly to embedded platforms as live tools on stage. Simon has two children aged 5 and 7 and lives in Lucerne Switzerland.

*A huge thanks goes to Simon Iten for sharing this project with us.*
