---
layout: post
title: "Suspended Circles: interactive hanging mobile with knitted sensors"
date: 2021-07-30
categories:
  - "Installations"
  - "Projects"
  - "Trill"
description: ""
image: suspended-circles/01.jpeg
author: bela
---

Suspended Circles is an interactive sonic installation which was designed and built by Tove Grimstad Bang during the autumn of 2020. This human-sized hanging mobile of concentric circles integrates custom knitted sensors with Bela and Trill to explore music–movement interactions.

<div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/578011419" style="position:absolute;top:0;left:0;width:100%;height:100%;" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>

# Music as movement

The project is grounded in the idea that music is movement, drawing on theories of phenomenology and embodied music cognition. It looks into how a body–centered design process might open up possibilities for the cultivation of musical sensitivities
As a way to practically explore music as movement, I reached out to Dalcroze Eurhythmics practitioners at the Royal College of Music in Stockholm, and participated in classes throughout the autumn of 2020.

{% include single-image.html fileName="suspended-circles/close-up.jpg" caption="Close up of the Suspended Circles installation." %}

[Dalcroze Eurhythmics](https://en.wikipedia.org/wiki/Dalcroze_eurhythmics) is a pedagogical approach of teaching music through movement. The approach started with composer and music teacher Émile Jaques-Dalcroze at the beginning of the 1900s, as he noticed how his students at the Geneva Conservatory were lacking musicality despite their solid theoretical knowledge. Dalcroze’s approach to music pedagogy was a practical one based on the idea that music is perceived, performed and understood through movement, opposing the tradition of body–mind separation, which was (and still is) the prevailing school of thought in score-based Western music education.


# Designing for Eurythmics

The experiential qualities of the installation's design were primarily drawn from discussions with experienced Dalcroze practitioners and from my subjective experiences with Dalcroze Eurythmics. Many exercises included in the Dalcroze classes provided me with strong examples of unfamiliar and disruptive musical experiences, many making the body move in strange and uncommon ways. As I was learning these movements, and learned more about the music theory behind them, I started building up a repertoire of gestures that I could later revisit and use to inform my design choices.

{% include single-image.html fileName="suspended-circles/03.png" caption="Various shots of the Trill Craft breakout and sensor experiments including the syncopated sensor patterns."%}

As I was working with movement and hoped to build a tangible musical instrument, I started exploring conductive materials and textile surfaces. I used the Trill craft sensor and made a textile interface for easy, non-permanent connections, following [Becky Stewart’s tutorial](https://learn.bela.io/tutorials/trill-sensors/working-with-trill-craft/#conductive-fabric-and-thread).

{% include single-image.html fileName="suspended-circles/05.png" %}

Using a Bela board, Pd (Pure Data) for programming and the Trill craft I explored different materials using sound as an output. Using simple oscillators in Pd, with the sensor data controlling frequency and/or amplitude, I explored different ways to get rich and varying sonic responses from touch input, e.g. squeezing or pulling resulting in gradually increasing pitch. I then crafted a variety of ‘sensor’ materials from a mix of conductive and non-conductive materials.

## Making syncopation physical

From my practice with Dalcroze Eurhythmics, various music-movement related experiences stood out to me. For example the relationship between the body and rhythm and repetition and how musical pulse can be displaced around the body. I began to see how also my listening to music had developed since practicing Dalcroze: I could listen to or play a piece of music that I had known for years, but suddenly feel new sensations of, for example, dissonance in specific body parts.

{% include single-image.html fileName="suspended-circles/04.png" caption="Details of the knitted sensors." %}

Movement and touch qualities were now linked together with the musical experience of rhythm and repetition, which were used to inform the design and conception of the musical instrument. Touch-sensitive interfaces were made from machine knitted cotton and conductive thread. These provided nuanced sonic output from stroking, dabbing, holding and squeezing.

## The structure

The structure of the instrument is suspended from the roof and is large in size. It is primarily made up of wooden rings, of 90 cm diameter on the largest.
Taking inspiration from the Dalcroze exercises, syncopations and variations of musical meter are knitted into the fabric of the instrument. Varying the distances between the conductive areas, imitating note sequences of changing musical meter, gives a syncopated sonic feedback when sliding the hands over them at an even pace.

{% include single-image.html fileName="suspended-circles/02.jpeg" caption="The full installation" %}

The conductive areas of the instrument are connected to the touch sensor breakout board and the sound is processed through a Bela board running a 4-channel looper controlled by pedal like boxes on the floor (based on a [patch by Robert Jack](https://patchstorage.com/pepper-4-channel-looper/) made for the Pepper module and sound synthesis in Pd ([find the code here](https://github.com/togrba/designing_for_musical_bodies)).

## Sound design

In this first iteration of the Suspended Circles the sound design is kept simple. Each sensing area is mapped to a note on a C major scale (with a few exceptions), with increasing pitch across height. As in the material exploration stage, the sensor data controls amplitude and/or frequency of cosine wave oscillators. While the patch is simple, the interface provides interesting sonic output depending on how one interacts with it. Here are a few audio examples of two very different sounding scores, one played by a tall person, mostly staying in the higher pitch area of the instrument:

<iframe width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1080083911&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>

Here by comparison is another recording with a smaller person playing more lower frequencies and a lot of distortion:

<iframe width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1080083914&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>

I placed the sounds around each circle where larger movements, e.g. arms spread wide would create harmonics, and areas closer to each other would be distorted, as a way to nudge a person to interact with the instrument using different and wider movements. Dalcroze Eurythmics in particular served as a rich space for bodily practice in the context of movement–music interaction.

## Reflections on the instrument

The instrument served as a starting point for the observation of creative processes in composition, improvisation and collaboration through movement. The instrument makes physical the movement space of Dalcroze Eurythmics and uses this space as a source of musical creativity. Dalcroze Eurythmics in particular served as a rich space for bodily practice in the context of movement–music interaction.

# About Tove Grimstad Bang

Tove Grimstad Bang is an engineer, researcher, designer and amateur musician working with movement-based interactions.
She builds, designs, codes, and moves with her projects to develop movement-based interactive systems that support creativity, and explores how we can work towards designs and technologies that unfold rich and diverse possibilities for movement and open up for new experiences and bodily knowledge transfer.
This project was part of Tove’s master thesis in [Interactive Media Technology](https://www.kth.se/en/studies/master/interactivemediatechnology/description-1.593765) at KTH Royal Institute of Technology, Stockholm.
