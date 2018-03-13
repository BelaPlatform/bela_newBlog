---
layout: post
title: "Of these moments in-between, everything: 20-channel sound installation by Nicholas Knouf"
date: 2018-03-13
categories:
  - "Projects"
  - Installations
  - "Software"
  - "Hardware"
description: "Of these moments in-between, everything: 20-channel sound installation by Nicholas Knouf"
image: nick-knouf/installation-from-below.jpg
hidden: true
author: bela
---

*Of these moments in-between, everything* is a 20-channel sound installation by Nicholas Knouf that fills the gallery with hanging miniature speakers relaying global satellite transmissions.

{% include single-image.html fileName="nick-knouf/installation-best.jpg" caption="Photo by Kelsy Gossett" %}

## they transmitted continuously / but our times rarely aligned / and their signals dissipated in the ether

This 20-channel sound installation plays back hundreds of transmissions from satellites in orbit around the earth that Nicholas collected.

{% include vimeo.html vimeo="255839962" %}

Nicholas built a series of custom antennas from scratch and used them to track the orbits and frequencies of satellites using a specialised software. This software then allowed him to collect the radio frequency signals of each satellite and to translate them into sound. The transmissions are mostly from weather satellites, CubeSats (small satellites launched by universities world-wide for short-term research), or amateur radio repeaters (satellites designed for HAM radio operators to experiment with communication over long distances). 

{% include single-image.html fileName="nick-knouf/installation-view.jpg" caption="Photo by Kelsy Gossett" %}

# Piezoelectric speakers

Nicholas made the speakers from a piezoelectric element embedded between two sheets of handmade abaca paper that was then air dried over a mold. The wires that carried the audio signal to the piezo speakers doubled up as mechanical supports to hang the elements from the light grid in the gallery.

{% include single-image.html fileName="nick-knouf/installation-close-up.jpg" caption="Close-up of one of the piezo speakers. Photo by Nicholas Knouf." %}

{% include single-image.html fileName="nick-knouf/piezo-speaker-3.jpg" caption="Photo by Nicholas Knouf." %}

{% include single-image.html fileName="nick-knouf/piezo-speaker-2.jpg" caption="Photo by Nicholas Knouf." %}



# How Bela was used

{% include youtube.html youtube="tTAeZltjVUM" %}

Nicholas used Bela in combination with an [audio expander capelet](https://shop.bela.io/bela-accessories/bela-audio-expander-capelet-preorder-shipping-in-march) in order to have low-cost access to a large number of audio output channels. The audio signals from Bela were then sent to some small power amplifiers before being fed to the piezo speakers. He used SuperCollider as his programming language of choice for this project and you can find it in his repo: [https://gitlab.com/OfThoseMoments/OfThoseMomentsSC](https://gitlab.com/OfThoseMoments/OfThoseMomentsSC). Nicholas had the following to say about working with Bela on the project:


> "The SuperCollider integration was a big plus coupled with the integrated IDE, as it enabled me to quickly prototype the work within the space after the hardware was installed above the lighting grid and thus out of reach. Building upon the BeagleBone platform allowed for easy starting and stopping of the work each day through the provided scripts and standard Debian utilities. Bela's stack of hardware and software made the realization of this installation within a short timeframe possible."



Nicholas Knouf is an Assistant Professor of Cinema and Media Studies at Wellesley College in Wellesley, MA. He is a media scholar and artist researching noise, interferences, boundaries, and limits in media technologies and communication. You can find out more about his work at [zeitkunst.org](http://zeitkunst.org/) and follow his posts on [Twitter](https://twitter.com/zeitkunst) or [Instagram](https://www.instagram.com/zeitkunst/). A big thanks goes to Nicholas for sharing this beautiful sound installation with us.

