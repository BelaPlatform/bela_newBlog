---
layout: post
title: "Pulse//Wave connects wood and flesh in a sound installation"
date: 2021-04-07
categories:
  - "Installation"
  - "Hardware"
  - "Instruments"
description: ""
image: pulsewave/PW_hands1.jpg
author: bela
---

Pulse//Wave is a sound installation that explores the sonic nature of bodies and objects.
It invites the audience to connect themselves to a wooden structure and establish an intimate dialogue through sound, tactility and light.

{% include youtube.html youtube="-songGMen7o" %}

# Wood and flesh

Pulse//Wave was created by Michele Abolaffio and Giuliano Anzani and aims to connect two bodies (wood and flesh) into a single resonating element. It focuses on tactile sound manipulation and creates personal sonic experiences based on musical intent and gesture.
When interacting with this installation the audience ends up exploring themselves through the panel, as their actions are reflected in the physical structure of the installation. Different tensions and pressures are accentuated through the panel, affecting the visual and sonic behaviour of the installation.

## Installation structure

The installation is composed of a wooden panel mounted on a supporting structure. The panel is equipped with contact speakers which act as the interface with the audience. The audience wears contact microphone-equipped wristbands that amplify the sound passing through the hands.

{% include single-image.html fileName="pulsewave/whole.jpg" %}

## Modes of interaction

The interaction happens when the player touches the panel: the sound captured by the wearable microphones is transmitted to the contact speakers on the panel, establishing a feedback loop between the panel and the hands. The position and the pressure of the hands influence the sonic outcome. This data also drives the sound processing module that enhances the sound quality of the interaction, as well as a reactive lighting system which highlights the feedback’s behaviour.

{% include double-image.html left="pulsewave/PW_interaction_1.jpg" right="pulsewave/PW_interaction_3.jpg" %}


# Software

The control system runs on the Bela Mini as a SuperCollider program.
The software includes a series of modulation processes used to emphasise and enhance the resonances produced by the feedback as well as introducing new musical elements derived from the user’s interaction.
The input signal from the microphones is analysed and drives the audio and light processes. The analysis algorithms applied to the input signals include frequency centroid, envelope tracking, and statistical analyses. This data is then used to control manipulation of the audio and influence the resulting sound, and in particular to avoid static situations. This challenges the audience to explore different scenarios and experiment with different gestures.

# Hardware

The main interface of Pulse//Wave is a wooden panel which is pressed against by the audience. It is a flexible wooden panel constrained at two points at the top. This design enables the best structural strength and provides the most freedom to develop resonance patterns. The support structure consists of two wooden poles and a platform, which are intended to maintain rigidity on the top end of the panel and to allow the users to play with the flexible panel.

{% include single-image.html fileName="pulsewave/PW_electronics.jpg" %}

## Contact microphone

The microphones are custom made wearable sensing devices containing electret capsules that capture the sound of muscle movements. For this installation, they are used also to amplify the sound passing through the hands. They are shaped as armbands which are easy to wear on the wrists.

## Lighting

The interactive lights are made of custom made LED lamps and driving circuits controlled from the software. They are used to give light feedback of the sound passing through the user’s skin, providing a visual counterpart to the tactile feeling.

## Contact speakers

The contact speakers are devices that induce sound into the surfaces they are connected to. Here they are used to generate an intense physical vibration through the panel that exposes the sonic properties of the wood and skin conduction.

## Bela board

The Bela Mini board is the heart of the audio processing and interactivity. It is used here for processing and analysing the sound coming from the wearable microphones.

{% include single-image.html fileName="pulsewave/PW_interaction_2.jpg" %}

# About the creators

[Michele Abolaffio](https://www.instagram.com/abo_electronics/) is a sound artist, electronics designer and sound engineer.
He develops biophysical musical instruments for live performance, as well as sound installations that enable sound manipulation through tactility and biofeedback.

[Giuliano Anzani](https://cargocollective.com/giulianoanzani) is a sound designer and multimedia programmer.
He is interested in the development of generative environments and digital interfaces for live electronics.

# About STEIM

This installation has been commissioned and made possible thanks to [STEIM](https://steim.org/), the Studio for Electro-Instrumental Music that has been supporting our cultural ecosystem for over 50 years and that sadly, due to funding cuts, has recently closed. STEIM allowed us to experiment, test, build and show this work to its supportive audience. It was a place where one could find like-minded artists and makers, all busy with soldering electronics and building weird sounding objects. We hope there will be many more places that will continue its mission of enabling and connecting artists working with sound, to give them a platform and a voice.
