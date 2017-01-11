---
layout: post
title: "Bela and Analog Synths"
date: 2016-11-15
categories:
  - Hardware
  - Synths
description: "Interfacing with a Doepfer Dark Energy II Analog Synth using Bela and Pure Data"
image: darknrg.jpg
author: giulio
---

In this video we put Bela through its paces in combination with an analog synth. 

We are running a Pure Data project on the board which we update on the fly and are patching the analog outputs of Bela to the CV ins of a [Doepfer Dark Energy II](http://www.doepfer.de/Dark_Energy_II_e.htm). This video just scratches the surface of what’s possible when Bela is used to control an analog synth or when an analog synth is used to control Bela. It's a good introduction for anyone who is wondering what can be done with the board out-of-the-box, and shows how easily a Bela-based Eurorack module would be to get up and running. Bela has stereo audio in and out plus eight analog inputs and outputs and so has enormous capacity for interfacing with modular synths, but there are a few things to bear in mind before getting started.

{% include youtube.html youtube="xAYvp6fVWBM" %}

## Hardware

The circuit diagram below shows how to connect Bela to the Dark Energy. The connectors shown on the left hand side of the diagram are mono jack sockets to make things easier which you can plug patching cable directly into, but for trying things out you could equally do this with crocodile clips on the patch cable. 

When connecting up the mono jack sockets it's important to make sure that ground is connected to the sleeve of the socket and the signal to the tip. In the circuit diagram and also in the video you'll see that we're using a force sensitive resistor to add some physical control to the Dark Energy. This sensor changes its resistance when you apply pressure to the circular part by squeezing it. In Pure Data we measure the change in voltage at the analog input. This type of circuit we're using to read the FSR is known as a voltage divider circuit. If you'd like to learn more about voltage dividers take a look at the documentation for the LDR example that comes on the board: [examples/06-Sensors/LDR](https://github.com/BelaPlatform/Bela/blob/master/examples/06-Sensors/LDR/render.cpp).

{% include single-image.html fileName="bela-darknrg.jpg" %}

## CV In

In the video above we firstly demonstrate some fun ways of taking control of the Dark Energy via the Pure Data interface. Then we show how to make things physical and connect sensors to take control of the analog synth. To take full advantage of the CV ins on the Doepfer we would need some extra circuitry but with some simple patching leads we can still achieve a lot. As the frequency inputs on the Dark Energy are scaled to 1V per octave but the analog outs of Bela can produce 0-5V, we are limited to covering a 5 octave range when we use Bela out of the box.



## CV Out

The video also includes a demonstration of how to take CV out from the analog synth and feed it into Bela. Precautions need to be taken here as the analog ins on the Bela board only tolerate 0-5V. The specs of the Dark Energy report that it gives out 0-6V but on measuring it is more like 0-8V. This would be enough to turn the Bela board into a Bela brick so we need a protection circuit! We show how to use two resistors to divide the voltage down, plus a diode from analog in to 3.3V to prevent the CV out of the synth from exceeding 4V.

## Eurorack

If you're interested in how Bela could be used as the basis of a Eurorack module then it's worth reading through this extensive discussion on the Bela forum: [https://forum.bela.io/d/30-eurorack-input](https://forum.bela.io/d/30-eurorack-input).