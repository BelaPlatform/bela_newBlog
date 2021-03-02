---
layout: post
title: "jumpSynth: Trampoline Powered Synthesizer"
date: 2020-06-24
categories:
- "Projects"
- "Instruments"
- "Hardware"
- "Installations"
description: "jumpSynth: Trampoline Powered Synthesizer"
image: trampoline/header.jpg
author: bela
---

Yann Seznec, Game Designer in Residence at [MICA Game Lab](http://gamelab.mica.edu/), has created a trampoline-based portable synthesizer for making noise in the woods alone.

{% include youtube.html youtube="qDNtRO8HQ2M"%}

# Bouncing to the beat

I’ve been playing around with trampolines as interfaces for some time now, starting a few years ago with [Tinderbox and Room to Play](https://www.yannseznec.com/works/room-to-play/). The premise is really simple – with some copper tape underneath the trampoline you can make a switch circuit that is completed each time someone jumps, making the equivalent of a button press. You can then use that to make noise (or play a game or anything, really). It’s an incredibly satisfying and universal interaction, jumping up and down to control sounds just works well for some reason.


{% include youtube.html youtube="28DZphxIRe8"%}

This past semester I taught a class at MICA called Experimental Sound Games, so I resurrected my old trampoline ideas to use as one of the main assignments for the class. The whole pandemic situation meant that the projects couldn’t be completed quite as planned, but some of them turned out super well anyway! To help them along I made this tutorial video.

# What's inside

In terms of the jumpSynth – the synth part is a [Pure Data](https://puredata.info/) patch running on a Bela. I’m no synthesis expert, so it’s a kind of silly synth with 8 analog control inputs. It produces a fun array of sounds overall – I designed the sound to work well with the jumping interface. The synth plays a sequence of notes from an array in a loop. With each “button” press from the trampoline it plays the next note. There is a button for randomizing the notes. This is a sound design trick I rely on pretty often (it even shows up on the menu system for my old iPhone game Bad Hotel, which I talk about in some depth [here](https://youtu.be/ZZmisHnVQXQ)).

{% include double-image.html left="trampoline/jumpSynth_box.jpg" right="trampoline/jumpSynth_inside1.jpeg" %}

You can find all the code and more technical info on the [GitHub repository for this project](https://github.com/yannseznec/jumpSynth). If you like Yann's work check out his [website](https://www.yannseznec.com/) and a previous post on [The Book of Knowledge of Impractical Musical Devices](https://blog.bela.io/2020/03/06/book-impractical-musical-devices-yann-seznec/).
