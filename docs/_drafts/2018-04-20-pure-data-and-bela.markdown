---
layout: post
title: "Pure Data with hardware: data-flow programming for sensors and audio"
date: 2018-08-27
categories:
  - "Tutorials"
  - "Software"
description: "Pure Data with hardware: data-flow programming for sensors and audio"
image: opal-rhythm/header.png
author: bela
---

This post gives an in-depth run-through of using Pure Data with Bela. It explains how to get Pure Data patches running on Bela, various workflows, and the paradigm shift of treating sensor signals like audio.

# Bela is a Polyglot when it comes to open source

Bela has been designed to speak many languages. When it come to building interactive projects, and particularly to the world of computer music, we all have our favourites. When Bela was first created it was based solely around a core of c++ files and much of the versitility and power of Bela come form the levels of control and elegance of this programming language. C++ in the right hands can achive great things but there's more than one way to skin a cat. Over the last 30 years there has been a proliferation of new languages that specifically target sound and each one comes with its philosophy, ways of working, aesthetics and (most importantly) community.

From the very beginning of the Bela project we have endeavoured to support as many ways of working as possible and to couple estabilished programming languages with the high definition sensing and responsive behaviour of Bela. To date we support [SuperCollider](), [FAUST](), [PYO](), [Rust](), [CSound](), and the majority of the support and development for these projects has come from our community. Our first branching out, however,  was to a language that many of us in the Augmented Instruments Lab hold dear, a language that has taught us much of what we know about audio programming: [Pure Data]().

# Pure Data

For those of you unfamiliar with Pure Data you may recognise the boxes and patching cables in the above image from [Max/MSP](). Although from appearances Pure Data may seem to be the poor man's Max/MSP (which objectively it is as it's free) it is in fact Max's open source twin sister. Created in (1993) by Miller Puckette at IRCAM...

# Pure Data and Bela


