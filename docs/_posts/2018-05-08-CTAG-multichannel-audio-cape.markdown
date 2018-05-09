---
layout: post
title: "Introducing the new CTAG FACE and BEAST multichannel audio systems"
date: 2018-06-08
categories:
  - "Hardware"
  - "Software"
description: "Introducing the new CTAG FACE and BEAST multichannel audio systems"
image: CTAG/CTAG.jpg
author: bela
---

We are excited to announce the release of the CTAG FACE and BEAST multichannel audio systems, available for pre-order now from the Bela shop.

<div style="text-align: center; margin-bottom: 10px;"><a href="https://shop.bela.io/ctag" name="Preorder CTAG now"><button name="button" style="font-size: larger; font-weight: bold; cursor: pointer; color: #ffffff; padding: 10px; background-color: #00bea4; border-radius: 4px; border: 4px #00bea4;">Preorder now</button></a></div>

Developed by Henrik Langer and Robert Manzke of [CTAG Audio](http://www.ctag-audio.de) in collaboration with Bela, the FACE is a cape for the BeagleBone Black with 4 audio input channels and 8 audio output channels. The BEAST, created by stacking two FACE capes on top of each other, doubles the amount of available audio I/O to an impressive 8 input channels and 16 output channels.

{% include single-image.html fileName="CTAG/FACE.jpg" caption="A FACE cape installed on a BeagleBone Black" %}

The CTAG capes are fully compatible with Bela, and can take advantage of Bela's unrivalled [sub-millisecond latency](https://github.com/BelaPlatform/Bela/wiki/What-is-Bela%3F), along with Bela's streamlined workflow and [development tools](https://github.com/BelaPlatform/Bela/wiki/Bela-IDE). They can even be used together with a [Bela cape](https://github.com/BelaPlatform/Bela/wiki/Hardware-explained) to gain access to Bela's 8 DC coupled analog inputs and outputs. They can also be used with ALSA drivers for compatibility with standard linux applications.

{% include single-image.html fileName="CTAG/BEAST.jpg" caption="Front-view of the BEAST with optional breakouts installed" %}

For more details on the CTAG build, take a look at the [hackaday project page](https://hackaday.io/project/9634-beaglebone-multi-channel-audio-card-ctag-face24).

{% include single-image.html fileName="CTAG/full_stack.jpg" caption="The full stack: a BeagleBone Black, the BEAST and a Bela cape" %}

## Tech specs

| Feature | Spec |
| :-: | :-: |
| audio inputs/outputs (FACE) | 4/8 |
| audio inputs/outputs (BEAST) | 8/16 |
| latency (Bela) | 1ms\* |
| latency (ALSA) | 3.2ms\*\* |
| sample-rate/bit-depth (Bela) | 48KHz/16bit |
| sample-rate/bit-depth (ALSA) | 48, 96, 192KHz/24bit |
| THD+N | -85dB (approx) |
| crosstalk | -100dB (approx) |

\* Guaranteed by Bela's hard-real-time environment
\*\* Dependent on system load
