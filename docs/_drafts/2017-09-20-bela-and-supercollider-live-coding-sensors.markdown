---
layout: post
title: "Using Bela and Supercollider to live-code your sensors"
date: 2017-09-20
categories:
  - Tutorials
description: "What you can do by live-coding Bela"
image: supercollider.jpg
author: bela
---
 
## What is Supercollider?

// this is difficult: I think there is general disagreement on this: where does SC stop? Is `scsynth` Supercollider? Is `scsynth` + `sclang` Supercollider? Is `scsynth` + `sclang` + the SC IDE Supercollider?
Supercollider (SC) is an audio-oriented programming language. 

Client/server architecture: the server (synth) runs the audio processing and can instantiate, connect and control new audio processing blocks in response to specific [Open SoundControl (OSC) messages]("https://en.wikipedia.org/wiki/Open_Sound_Control") it receives from a client.
The client can be any program capable of formatting such messages.
In many cases, the server and the client will run on the same machine, however they can easily live on separate machines on the same network.
Traditionally, the SC client of choice has been `sclang` (often referred to as "the language").
SClang is an object-oriented programming language that allows to define synth voices, run patterns, ..........

Typically, users write their code in the Supercollider IDE which allows to send the code line-by-line or block-by-block to the language.
This is the foundation of many live-coding performance practices.
There other high-level languages that interact with the Supercollider server, for instance Tidal or Sonic Pi.

{% include single-image.html fileName="bela-and-supercollider-live-coding-sensors/live-coding-sc-ide.jpg" %}

## Supercollider and Bela

Bela allows to control the audio by connecting arbitrary analog and digital sensors to the board.
Additionally, the analog and digital outputs allow to interface to CV synthesizers, LED or motors.

Thanks to the combined efforts of [Marije Balmaan](ask her what website she wants), [Giulio Moro](https://github.com/giuliomoro), [Dan Stowell](ask website), [Till Bovermann](website), [Jonathan Reus](website) and many others, it is now possible to run SC on Bela and to access all the inputs and outputs from within the Supercollider server, with the low-latency that characterizes the whole Bela environment.
// tie back in the STEIM workshop
This is achieved with the help of a number of customized `ugens` (unit-generators, the SC term for a plugin) and an audio backend which ties to the Bela API.
SC on Bela brings in a paradigm shift that adds physical interation to the core SC environment, allowing SC users to connect to the real world to make sounds and blink lights.
All of this, alongside generating and processing audio, of course.

This snippet of code shows how to read a digital input and activate a digital output in response:

```supercollider
	SynthDef('buttonControl', {arg inPin, outPin;
		var button = DigitalIn.ar(inPin);
		DigitalOut.ar(outPin, button);
	}).add;	
```

When using SC on Bela you can take advantage of the server/client architecture by running the language and the SC IDE on your computer while running `scsynth` on Bela, so that you can use the live-coding approach for experimenting and trying out things.
However, once you have finalized your project, you may want to run `sclang` on Bela to be able to run your program without live-coding interaction, for instance to make a stand-alone instrument running on battery (link to some of Till's projects, or Dianne's).

//GIF of blinking LED on Bela

## Bela inputs and the language

In SC, high-level behaviours such as patterns, tasks, routines are typically implemented in the language.
For this reason, controls such as MIDI, serial, network are typicallu handled by the langauge itself.
However, in the case of Bela, the analog and digital inputs are available to the server only, in order to guarantee low-latency and high bandwidth to control sound parameters.
Conveniently, it is still possible to send these controls back to the language using the `SendReply` object.
In the snippet below, the values read from the analog inputs 0 and 1 are sent back to the language 10 times per second:

```supercollider
var a0 = AnalogIn.ar(0);
var a1 = AnalogIn.ar(1);
SendReply.kr(Impulse.kr(10), '/ctrl', [a0, a1]);
```

// add a video of something slightly more articulated, like example 6-pattern-control with actual sensors and - very important - some LEDs!

## Getting started

Supercollider should already be installed on your Bela board, however you will want to make sure you are running the [latest release](https://github.com/giuliomoro/supercollider/releases).
To get started with Supercollider on Bela, you can go through the examples provided with the Bela code.
These are accessible from the Bela IDE and can be run just like any other Bela project, by simply pressing the "run" button: if there is a `_main.scd` file in your project, this will be passed to `sclang` for execution.
The same examples, with wiring diagrams for connecting sensors and LEDs are available at [github.com/giuliomoro/bela-sc-examples](https://github.com/giuliomoro/bela-sc-examples).
// TODO: simplify the above

If you want to live-code Bela from the Supercollider IDE, you have to download the [Bela class files](https:/github.com/sensestage/bela-remote) on your computer, following the instructions on the README.
Make sure you are running Supercollider 3.8 or above on your computer.

## What's next

Porting Supercollider to Bela was a challenge that is still not complete, we recently announced the Beta version, but we are aiming to release a stable version in the near future.

### Integrating support for the Bela Scope.

The [Bela scope](link, is there a youtube video?) is not currently accessible via Supercollider.
We are hoping to make this possible soon, as it is a very useful tool and offers more advanced features than SC's own `Scope` object.

### Live coding from within the Bela IDE.

Currently the Bela IDE can be used only to run code non-interactively and we need to resort to the Supercollider IDE running on the host computer to do live-coding.
We are going to add the possibility of executing snippets of code from within the Bela IDE, making it even easier to get started.

### More bug fixes

Supercollider was designed with a desktop environment in mind, and porting it to the constrained environment of an embedded platform requires further work and optimizations.
We hope that some of the improvements we propose will eventualy make their way upstream so that they can be useful to all SC users, not only those that use it on Bela.
Ultimately, we aim to be able to merge the Bela developmnet branch back into the main Supercollider development branch, which would make maintenance easier for us.
You can track the open issues on [github.com/sensestage/supercollider/issues](https://github.com/sensestage/supercollider/issues) and get the latest release of Supercollider for Bela from [github.com/giuliomoro/supercollider/releases](https://github.com/giuliomoro/supercollider/releases).


