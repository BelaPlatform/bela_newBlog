---
layout: post
title: "Sonic Circuit Sculptures by Helen Leigh: Trill Craft"
date: 2019-09-19
categories:
- "Trill"
- "Projects"
- "Hardware"
- "Instruments"
description: "Sonic Circuit Sculptures by Helen Leigh: Trill Craft"
image: helen/header.JPG
author: bela
---

The educator, writer and artist [Helen Leigh](https://twitter.com/helenleigh) has created a series of sonic circuit sculptures which experiment with sound in combination with freeform, organic-looking electronics. In this post we look at how [Trill Craft](https://www.kickstarter.com/projects/423153472/trill-touch-sensing-for-makers) was used to make them.

# Making Music with Metal and Trill Craft

{% include single-image.html fileName="helen/harp work in progress.JPG" %}


The sonic circuit sculpture creatures featured in this post are a series of interactive sound art installations. The creatures were made by [Helen Leigh](https://twitter.com/helenleigh) in collaboration with sound designer and composer [Andrew Hockey](https://www.andrewhockey.com/). The videos below demonstrate two of the creatures: one a synthy bass creature with two modes of modulation and the other a harp-like melodic creature.

# Bass Circuit Sculpture Creature

{% include youtube.html youtube="J-wa163c2Vw" %}

This creature has a pitch range of one octave, is tuned to C minor and the rightmost limbs trigger two effects: a tremolo and a delay. It is made of brass, solder and paper, and is powered by a [Bela Mini](https://shop.bela.io/bela-mini) and [PocketBeagle](https://beagleboard.org/pocket).

{% include youtube.html youtube="LM3rKevSr5M" %}


# Harp Circuit Sculpture Creature

{% include youtube.html youtube="sqhyhH7Hu3Y" %}

This creature is tuned to C harmonic minor and has a three octave range from left to right. It is made of steel wire, solder and paper, and is powered by a [Bela cape](https://shop.bela.io/bela) and [BeagleBone Black](https://beagleboard.org/black).

{% include single-image.html fileName="helen/harp close.JPG" %}

# Working with Trill Craft

At the core of each sculpture is the new Trill Craft sensor that is available as part of the [Trill Kickstarter Campaign](https://www.kickstarter.com/projects/423153472/trill-touch-sensing-for-makers).

{% include single-image.html fileName="trill/craft_specs-01.png" %}

Trill Craft is a 30-channel capacitive sensing breakout board that lets you make your own touch interfaces out of anything conductive. In this case it is used to identify when contact is made with the metal rods attached to the board. Trill Craft is then connected to the Bela cape on top of a BeagleBone which make it quick and easy to get the readings from the sensor producing sound.

{% include single-image.html fileName="helen/black-bread-board.jpg" %}

The code that powers both instruments was written in [Pure Data](https://blog.bela.io/2019/03/06/pure-data-and-bela/) and runs via the Bela browser-based IDE. The Pure Data patch receives a reading from the Trill Craft capacitive sensor and then triggers the playback of a sample when the reading on each channel passes a certain threshold. This is similar to one of the default examples that comes with Bela which you can explore on the [Trill github repository](https://github.com/BelaPlatform/Trill/tree/master/examples/Bela/Trill_sample_trigger_pd).

{% include single-image.html fileName="helen/pd-thresholding.png" %}

# About Helen Leigh

Helen Leigh is a hacker, writer, musician, presenter, educator, artist & self-professed nerd. She is the author of [The Crafty Kid’s Guide to DIY Electronics](https://www.amazon.co.uk/gp/product/1260142833?pf_rd_p=330fbd82-d4fe-42e5-9c16-d4b886747c64&pf_rd_r=HV3QWBMFBTVC3XE58Y1W) and the creator of the [MINI·MU glove](https://doitkits.com/portfolio-item/minimuglove/).

{% include single-image.html fileName="helen/harp creature prototyping.jpg" %}

# Visit Trill on Kickstarter

The Trill touch sensors are now [live on Kickstarter](https://www.kickstarter.com/projects/423153472/trill-touch-sensing-for-makers)! This new family of sensors from Bela bring precise and easy-to-use touch interaction to your digital projects.

{% include youtube.html youtube="xzaf2bBKuQI" %}

<div style="text-align: center; margin-bottom: 10px;"><a href="https://www.kickstarter.com/projects/423153472/trill-touch-sensing-for-makers" name="Trill on Kickstarter"><button name="button" style="font-size: larger; font-weight: bold; cursor: pointer; color: #ffffff; padding: 30px; background-color: #00bea4; border-radius: 15px; border: 4px #00bea4;">See our Rewards on Kickstarter</button></a></div>

The campaign runs until 5pm 18th October so don't miss your chance to get your hands on this new family of touch sensors for makers. See you on Kickstarter and stay tuned for updates!
