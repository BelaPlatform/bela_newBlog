---
layout: post
title: "Sonic Tree by Daniel Maszkowicz"
date: 2020-05-01
categories:
- "Projects"
- "Instruments"
- "Hardware"
- "Installations"
description: "Sonic Tree by Daniel Maszkowicz"
image: sonic-tree/header.jpg
author: bela
---

In this post we present Sonic Tree by Daniel Maszkowicz, an algorithmic hexadecaphonic sound installation programmed with SuperCollider and running on Bela.

# Amplified branches

{% include single-image.html fileName="sonic-tree/full-installation.jpg" %}

Sonic Tree is a metallic structure in a room of concrete contrasting with the organic movements it incarnates. Its virtual neuron cells exchange electric signals, and its metallic cells propagate sound faster than in the air. Just like any tree, it offers a comforting shelter with the sounds of insects and the soft breeze in its leaves.

{% include vimeo.html vimeo="407982570" %}


# Algorithmics

This sound installation features an autonomous audio-dedicated programmable processor containing the algorithms for the real-time processing of audio signals (Bela + CTAG).

{% include single-image.html fileName="sonic-tree/viewed-from-below.jpg" %}

This processor allows controlling sixteen independent channels, each of them driving sixteen small active speakers distributed alongside the branches of the tree. A small piezoelectric contact microphone place at the top of the trunk allows amplifying the sounds produced by the movements of the metallic chains.


# Artificial neural network over 16 channels

An artificial neural network has been implemented with sixteen neurons, each of them corresponding to one audio channel.

{% include single-image.html fileName="sonic-tree/neuron_model-01.png" %}

The signal emitted by each neuron results from a matrix combination whose coefficients reflect the sound interactions in the network. The original sound source comes from the contact microphone, and is processed by the neuron network to create an effect of organic movement through the branches of the tree.

# Working with Bela

Daniel had the following to say about working with Bela:

> I've been working with SuperCollider for quite a while now, usually for creating immersive soundscapes, while playing live, or multichannel sound installations. Obviously when I got acquainted with Bela, I immediately saw what was missing in my practice. Bela allowed me to put together entirely autonomous and interactive multichannel installations with SuperCollider capabilities and all its programming ease.

> What I found great about Bela, was that I could very quickly implement my code ideas, the rest followed like almost plug and play. The fact you can program it with your usual computer music language is definitely a plus that brought me to have my own. The 16 Channels CTAG Beast deserves its name, and I'm looking forward to getting the upcoming sensors for bringing interactivity to the next level.


# About Daniel Maszkowicz

Currently living in Geneva – Switzerland – Daniel Maszkowicz (Daniel Siemaszko) is at the same time research scientist, curator for independent cinema, multidisciplinary performer, composer and producer. Having worked at CERN – European Center for Nuclear Research – he collected numerous field recordings from the fantastic machines he come across by wandering in the laboratories and abandoned tunnels.

{% include single-image.html fileName="sonic-tree/daniel_Maszkowicz.jpg" %}

For more information on his broad and varied practice visit his site at: [https://ooo.szkmd.ooo/biography/](https://ooo.szkmd.ooo/biography/)
