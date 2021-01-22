---
layout: post
title: "Digitally Active Drum by Peter Williams"
date: 2021-01-22
categories:
  - "Instruments"
  - "Projects"
  - "Sound Design"
  - "Installations"
description: "Digitally Active Drum by Peter Williams"
image: digitally-active-drum/header.jpg
author: bela
---

The Digitally Active Drum (DAD) is an augmented acoustic snare drum which provides new sonic capabilities to drummers, extending the drum's acoustic sound pallet.

{% include youtube.html youtube="dRypdmBfj3k" %}

# Hardware

This instrument aims to give performers some of the musical gestures associated with digital musical instruments without restricting the use of their acoustic drumming gesture vocabulary. As the instrument is electro-acoustic it generates electronic sound without diminishing the acoustic properties of the drum.

{% include single-image.html fileName="digitally-active-drum/hardware-dad.png" %}

Inside DAD there are two near field infra-red phototransistors, used to detect the movement of the batter head, a high quality speaker driver, and an audio exciter, which transduces audio signals directly into the resonant head of the drum. Attached to the outside of the speaker is an audio amplifier, a user interface, for adjusting effects parameters, which contains an Arduino Mega, Bela platform and Beaglebone Black.


# Software

The instrument is programmed using Pure Data and subtractive synthesis provides a parametric model of a struck, resonant material. An emulated snare drum mechanism was created using subtractive synthesis based on Perry Cook’s [Physically Informed Stochastic Event Modelling (PHISEM)](https://soundlab.cs.princeton.edu/research/controllers/shakers/), provides the drummer with sounds ranging from realistic to outlandish and unreal.

{% include youtube.html youtube="se9LJI3yL14" %}

Time based effects, such as flanger, reverb and delay, along with sample triggering are also available which are user assigned to either of two regions of the batter head.

# Research

Evaluation sessions with five drummers and two co-performers in solo and group performance session provided suggestions for improvement and verification of design concepts. The evaluation process employed builds upon an evaluation carried out by Peter Williams in a previous project, and represents a step towards his goal of developing an evaluation and research framework for musical instruments. More details about the evaluation can be found [here](https://link.springer.com/article/10.1007%2Fs00779-020-01391-6).

# About Peter Williams

Peter Williams is a Copenhagen based freelance musician who assists with various research projects in his position at Manufakturet – a prototyping laboratory at AAU Copenhagen.
