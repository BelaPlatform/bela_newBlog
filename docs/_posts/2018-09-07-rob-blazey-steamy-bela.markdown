---
layout: post
title: "STEAMY by Rob Blazey"
date: 2018-09-07
categories:
  - "Hardware"
  - "Instruments"
  - "Projects"
description: "STEAMY by Rob Blazey"
image: blazey/sunflowers-header.jpg
author: bela
---

In this post Rob Blazey introduces us to STEAMY, a solar-powered interactive sound-sculpture that makes use of Bela. Over to Rob:

{% include youtube.html youtube="P9FoA4svODY" %}


This piece was made for an exhibition at [Cragside House](https://www.youtube.com/watch?v=Ithmaf3oHpU) in Northumberland called [Switched On! Shining a Light on Female Innovation](https://www.nationaltrust.org.uk/events/e4bef91e-2964-4dd5-89bb-c681e0746723/pages/details). I worked with two artists, [Harriet Sutcliffe](http://www.harrietsutcliffe.co.uk/) and [Kate Stobbart](http://www.katestobbart.uk/), who created an installation of over 4000 sunflowers, disrupting the lawn of Cragside’s formal gardens. My contribution was to make a solar-powered interactive sound-sculpture to complement the sunflowers. I wanted to involve some reasonably complex audio processing using something that would be easy to enclose in a tight space, so Bela was ideal.

{% include single-image.html fileName="blazey/sunflowers.jpg" %}

I didn’t have long to develop the piece in between other projects and my day job, so the built-in examples and the Bela forum were a huge help. I’m also not much of a coder but I do use Pure Data, so the fact that Bela can run PD projects so easily really helped me to hit the ground running.  

{% include single-image.html fileName="blazey/controller.jpg" %}

Piezo triggers behind the sunflowers on the top panel of the instrument go directly into Bela’s audio/analog inputs and through short, high-feedback delays (tuned to a scale and doubled over two octaves, panned left and right). This was based on the [Karplus Strong synthesis example](https://github.com/BelaPlatform/Bela/tree/master/examples/08-PureData/karplusStrong) included in the Bela library. To create more movement in the sound, each octave has oscillators controlling the high frequency cut-off, note release and reverb controls at different overlapping rates. Processing the piezo audio directly, along with these other control parameters, makes a continually morphing, dynamically expressive tuned percussion instrument. There is also a generative sound-bed made up of tuned bee sounds, triggered at different time intervals and occasionally all together as a chord. 

{% include single-image.html fileName="blazey/laser-2.jpg" %}

To connect the project to my PhD on collage-based music and instrument making, I wanted to find a way to juxtapose fragments of what was played by different visitors throughout the day, adding to an ongoing audio collage. This was done with a network of samplers, each intermittently recording different length snippets of the sound-bed and synth notes, replaying them forwards or backwards at various octaves and feeding back into each other. Playing a few notes causes a chain reaction of pitched samplers, with some reacting immediately and some replaying audio minutes or hours after recording.

{% include single-image.html fileName="blazey/full-instrument.jpg" %}

## About Rob Blazey

Rob Blazey is a studio-based composer, instrument maker and performer currently based at Newcastle University’s Culture Lab. His practice explores the methods and intentions of visual collage-artists (particularly Eduardo Paolozzi) as an analytic key to developing new approaches to all aspects of music making, from composition and instrument making to extended musical performance ecologies and interdisciplinary works. Engaging with archives, ephemera, off-cuts and broken and unwanted objects as source materials, his work aims to demonstrate how collage techniques can form the basis of new approaches to musical creativity while addressing issues around waste, recycling, ownership and originality.

**Thanks to Rob for sharing this great project with us!**




