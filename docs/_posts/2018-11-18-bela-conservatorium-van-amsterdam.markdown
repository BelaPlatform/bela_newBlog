---
layout: post
title: "Live Electronics at the Conservatorium van Amsterdam with Bela Mini"
date: 2018-11-18
categories:
  - Tutorials
  - Workshops
  - Events
  - Education
description: "Live Electronics at the Conservatorium van Amsterdam with Bela Mini"
image: conservatorium/bela10.jpg
author: bela
---

At the Conservatorium van Amsterdam [Jos Zwaanenburg](http://www.contemporary-music-through-non-western-techniques.com/pages/1452-jos-zwaanenburg) has been using a fleet of Bela Minis as part of his teaching on the Master's in Live Electronics.

{% include youtube.html youtube="5ApchbjgBa0" %}

## Ultra-low Latency Live Electronics


On October 18th the students of the Master’s in Live Electronics at the Conservatorium van Amsterdam presented a series of pieces which use Bela Minis as no-latency FX machines.
The concert took place at Splendor-Amsterdam and was the culmination of a week of intensive workshopping and rehearsing in which all 12 participants had a Bela Mini with a Pd patch on it, controlled with MIDI from an editor in Max/MSP on a Mac. All musicians used the setup as described in the diagram below and the following Pure Data patch:

{% include single-image.html fileName="conservatorium/block_diagram_BeLa.png" %}

{% include single-image.html fileName="conservatorium/Pd_patch4BeLa.png" %}

To demonstrate that it is possible to play with great rhythmic precision, even when the traditional instruments are processed with extreme effects, two pieces were performed as can be seen in the above video.

### Pieces played:

Frank V. Zappa’s *The Black Page part 2* (the easy teenage New York version) in which 10 students managed to keep the correct ‘statistical density’, playing the famous melody in tight unison.

Simon W. Anserine’s *Belabo(u)red* for piccolo, flute, electric guitar and double bass, all four instruments with the Bela FX extension.



{% include single-image.html fileName="conservatorium/bela4.jpg" %}

{% include single-image.html fileName="conservatorium/bela6.jpg" %}

## Bela Mini for Live Electronics

The Pd patch had 5 different effects on board. By itself a computationally ‘cheap’ patch, it resulted in having practically no latency, enabling the group to play with great rhythmic precision, even at high tempi and with strongly articulated complex phrasings. A clear distinction was made between effects that must be in absolute synchrony (no latency allowed), such as distortion, ring-modulation, pitch shifting, and those that were processes in time such as delay, reverb or chorus (latency an inherent part of the effect). The former were running on Bela and the latter in a Max/MSP patch on the laptop. One Bela output was going to the main mix in the hall directly and the other back into the audio interface and Max, meaning that the Bela-processed sound of the instruments could also go to the effects unit in Max.


{% include double-image.html left="conservatorium/bela1.jpg" right="conservatorium/bela5.jpg" %}

{% include single-image.html fileName="conservatorium/bela2.jpg" %}


This is only the beginning of our use of Bela in the Master's in Live Electronics course at the Conservatorium van Amsterdam and we consider the October workshop and concert a highly successful musically convincing implementation that will definitely be getting a follow-up soon.
