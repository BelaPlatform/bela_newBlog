---
layout: post
title: "Augmented Duxianqin with Trill Craft"
date: 2019-10-17
categories:
- "Trill"
- "Projects"
- "Instruments"
- "Synths"
description: "Augmented Duxianqin with Trill Craft"
image: duxainqin/header.jpeg
author: bela
---

The duxianqin is a traditional plucked string instrument from China and in this post we'll learn about an instrument building exchange which used Trill Craft to reimagine the duxianqin as an electronic instrument. Over to Jon Pigrem to tell us all about it:

# Chinese Tradition and Digital Musical Instrument Design

Earlier this month a small team of researchers from Queen Mary University of London’s [Media and Arts Technology programme](http://www.mat.qmul.ac.uk) participated in a cross-cultural workshop with students and researchers from the [Central Conservatory of Music](http://www.ccom.edu.cn/) in China to reimagine the duxianqin, an instrument rich in Chinese intangible cultural heritage, originating from Vietnam a few hundred years ago.

{% include single-image.html fileName="duxainqin/composer.jpg" %}

As members of the [Augmented Instrument Lab](http://instrumentslab.org/) at Queen Mary, and early adopters of the Bela platform, we naturally stuffed the suitcases full of Bela goodies, and even were lucky to get our hands on a few of the unreleased [Trill Craft sensors](https://www.kickstarter.com/projects/423153472/trill-touch-sensing-for-makers).

As a product of a few days of cultural immersion (mainly eating far too much Beijing Duck and other unspeakable offal-ings) a design framework was drawn up for the development of three new approaches to the duxianqin, one augmented and two digital.


# The Instrument

I was the maker of one of the digital instruments the design brief which we followed was clear:
- Remove the string to simplify playing and provide greater pitch space.
- Keep the ‘joystick’ based pitch bend system (a bit like a whammy bar on a guitar).
- Maintain the form of the instrument and as many of the performance gestures as possible.
- Reduce the size of the instrument for easier transportation.

{% include single-image.html fileName="duxainqin/full-instrument.png" %}


## Hardware:

Using Trill Craft I quickly rigged up 16 note triggers, increasing the pitch space of the traditional instrument from 1 octave to 3. On the original instrument overtones are played based on divisions of string length, with a traditional instrument having 6 pitches (Chinese pentatonic scale). Removing the string meant its length was no longer the governing factor for pitch which enabled both the reclamation of a lot of unused space on the body of the instrument, and the ability to evenly space a greater number of pitched notes along its length.

{% include single-image.html fileName="duxainqin/internal-wiring.png" %}

Due to the short amount of time that we had for this build copper tape was used for the capacitive touch triggers. With more time, solid brass strips would provide a much more robust and aesthetically pleasing solution. The 'joystick' was kept, and its movement sensed using a flex sensor. This joystick was the key to the sound of the duxianqin, and a vital part of the gestures used by players to perform the instrument's repertoire.


## Software

The readings from Trill Craft were run into Pure Data on Bela, where they triggered a Karplus-Strong string model. The cut-off was kept at a high level to maintain brightness in the final output signal and the sustain duration was tuned to the performers taste. A resonant filter was used to accentuate the richness of pitch expected from the overtones produced by the original instrument.

## Body

As a nod to the origins of the instrument bamboo was used for the body, as would have been the case many moons ago. I was also able to hollow out the bamboo body, enabling the joystick to be packed inside for transportation. Speakers were placed at either end of the bamboo tube, using the tubes resonance and natural acoustic properties to add some authentic timbral character to the output signal.

{% include youtube.html youtube="atulPlQMFao" %}

## About Jon Pigrem

Jon Pigrem is an instrument builder, PhD researcher at Queen Mary University of London and a member of the Augmented Instruments Lab. His goal is to develop new understandings of interaction with digital instruments, borrowing from the long history of acoustic instrument design and lutherie. Jon’s current research investigates the role of material factors in performer's tactile interaction with digital musical instruments.

# Visit Trill on Kickstarter

The Trill touch sensors that were used in this project are [live on Kickstarter](https://www.kickstarter.com/projects/423153472/trill-touch-sensing-for-makers) until 18th October 2019! This new family of sensors from Bela bring precise and easy-to-use touch interaction to your digital projects.

{% include youtube.html youtube="xzaf2bBKuQI" %}

<div style="text-align: center; margin-bottom: 10px;"><a href="https://www.kickstarter.com/projects/423153472/trill-touch-sensing-for-makers" name="Trill on Kickstarter"><button name="button" style="font-size: larger; font-weight: bold; cursor: pointer; color: #ffffff; padding: 30px; background-color: #00bea4; border-radius: 15px; border: 4px #00bea4;">See our Rewards on Kickstarter</button></a></div>

The campaign runs until 5pm 18th October so don't miss your chance to get your hands on this new family of touch sensors for makers. See you on Kickstarter and stay tuned for updates!
