---
layout: post
title: "Using Bela with an Analog Synth"
date: 2016-11-28
categories:
  - Hardware
  - Synths
description: "Interfacing with a Doepfer Dark Energy II Analog Synth using Bela and Pure Data"
image: darknrg.jpg
author: robert
---

Interfacing with analog synths

This video shows Giulio putting Bela through its paces in combination with an analog synth. We are running a Pure Data project on the board which we updates on the fly, and are patching the analog outputs of Bela to the CV ins of a Doepfer Dark Energy II. This demo just scratches the surface of what’s possible when Bela is used to control an analog synth, or equally, when an analog synth is used to control Bela. It should serve as a good introduction for anyone who is wondering what can be done with the board out-of-the-box, and shows how easily a Bela-based module would be to get up and running.

{% include youtube.html youtube="xAYvp6fVWBM" %}

Firstly we demonstrate some fun ways of taking control of the Dark Energy via the PureData interface. Then we show how to make things physical and connect sensors to take control of the analog synth. To take full advantage of the CV ins on the Doepfer we would need some extra circuitry but with some simple patching leads we can still achieve a lot. The frequency inputs on the Dark Energy are scaled to 1V per octave — the analog outs of Bela can produce 0-5V so we can cover a 5 octave range.

{% include single-image.html fileName="bela-darknrg.jpg" %}

The video also includes a demonstration of how to take CV out from the analog synth and feed it into Bela. Precautions need to be taken here as the analog ins on the Bela board only tolerate 0-5V. The specs of the Dark Energy report that it gives out 0-6V but on measuring it is more like 0-8V. This would be enough to turn the Bela board into a Bela brick so we need a protection circuit. We show how to use two resistors to divide the voltage down, plus a diode from analog in to 3.3V to prevent the CV out of the synth from exceeding 4V.