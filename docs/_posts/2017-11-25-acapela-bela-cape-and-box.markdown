---
layout: post
title: "Acapela cape and case for Bela"
date: 2017-11-27
categories:
  - "Tutorials"
  - "Software"
  - "Hardware"
  - "Projects"
description: "Acapela cape and case for Bela"
image: acapela/generative-header-2.png
author: bela
---
Acapela is a very useful breakout cape and case for Bela created by [Juan Gil](https://juangil.com/about/) that makes it easy to prototype on the go.

{% include single-image.html fileName="acapela/Plexiglas.png" %}

Acapela is composed of two things, a circuit board and a box (or enclosure). The circuit board has space for eight potentiometers and two 1/8" TRS (a.k.a. mini-jack) connectors for stereo audio input/output. The cape attaches directly on top of Bela while the box just keeps everything together and makes it easier to move around.  

# What's it for?
Juan decided to build Acapela to be able to prototype and test his audio programs with Bela in a more portable way while on the move (e.g. on the tiny tables of his favourite coffee house, or on the train going to work) and to avoid carrying around hairy circuits made on a breadboard with jumper cables and noisy sensors that disconnect easily. The potentiometers in Acapela can simulate any sensor to be replaced later with a specific product, or equally they can just be the controls of the final product (e.g. a guitar pedal or a synth).  

{% include single-image.html fileName="acapela/HDF.png" %}

# How was it built?
The circuit board was designed using [Fritzing](http://fritzing.org/), and manufactured with [Aisler](https://aisler.net/). The box was designed with [SketchUp Make](https://www.sketchup.com/) assuming a material thickness of 3mm (0.118in). The dovetails were created using the [Auto Dovetails](http://seanregan.com/sketchup/dovetail/) plugin for SketchUp (this plugin does not take into account the laser beam width, which means that the joints are a bit loose, but in practice the box is very solid and stays together without the need of glue). The outer surfaces of the SketchUp model were exported to SVG format using the [Flights of Ideas](https://github.com/JoakimSoderberg/sketchup-svg-outline-plugin) plugin. The exported file was then edited using [Inkscape](https://inkscape.org/) to add some text and arrange the parts for the laser cutter. Juan soldered the circuit and laser-cut the box at the [Copenhagen Fablab](http://valby.copenhagenfablab.dk/), an open access tool workshop at the Valby Kulturhus. Juan has released this project under the <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>, so if you want to build your own version of Acapela you can get all the files from his [repository](https://github.com/juandagilc/Acapela). 

[Juan Gil](https://juangil.com/about/) is an engineer in acoustics with a background in sound engineering based in Copenhagen. His interests are in audio programming, signal processing, spatial audio, sound synthesis and machine learning. Juan also has a super useful [library of externals for Pure Data and Max/MSP](https://github.com/juandagilc/DAO-MaxMSP-Pd), many of which have been compiled and tested with Bela. The value of this project is not only in the externals themselves, but in the documentation of how to setup projects to write externals from scratch.




