---
layout: post
title: "Ambulation - Extended Soundwalking with Bela"
date: 2020-11-18
categories:
  - Instruments
  - Hardware
  - Sound Design
  - Installations
description: "Ambulation - Extended Soundwalking with Bela"
image: ambulation/Credit_TimShaw.jpg
author: timshaw
---

In this post the artist Tim Shaw introduces us to his series of soundwalks, *Ambulation*, and shows us how he integrates Bela into his practice as a way of manipulating soundscapes in real time and in real space.

# Ambulation

## Soundwalking performance

Since 2014 I have been developing [Ambulation](https://tim-shaw.net/augmented/), a soundwalking performance which uses a variety of field recording techniques and sound processing technologies. I meet a group of people somewhere in a city and take them on an augmented sound walk. Sounds from the immediate environment are collected, processed and broadcast to the group, each wearing wireless headphones. The performance takes place within a diversity of spaces with contrasts between roads, pedestrian walkways, indoor and outdoor spaces, tunnels, bridges, rivers, churches, cemeteries, parks, lakes and ponds, green areas, open and confined spaces and any other sites that provide sonically and visually dynamic environmental changes.

{% include single-image.html fileName="ambulation/Credit_BrunoMello2.jpg" %}

Ambulation is an improvisation with environmental sounds encountered during the walk, no pre-recorded sound is used in the performance, all the sounds are heard by the audience and the performer (me) at the same time (there is no pre-fade listening, the first time the audience hear a sound is also the first time I hear it). To allow me to do this kind of walk I developed a specially made system using different microphones interfaced with Pure Data. This enables me to collect, loop, process and manipulate acoustic and electromagnetic signals occurring in the environments we move through.

{% include single-image.html fileName="ambulation/15.10-TIMSHAWN_008_FRANCOIS_GENDRE.jpg" %}

Originally all sound processing was done using a laptop running closed in a backpack, I recently shifted my system to the Bela platform and realised the many new possibilities this opens up. In this blog post I will share some of my experiences using the Bela board on sound walks, delve into the Pure Data processing techniques I have been using and show some of the hardware I use in the Ambulation system.

## Technologies

In a small bag I carry a portable field recorder ([Zoom F8](https://zoomcorp.com/en/jp/handheld-video-recorders/field-recorders/f8/)), plugged into this are two spaced omnidirectional microphones placed on either side of the bag, a electromagnetic inductor (from [LOM](https://store.lom.audio/)), a hydrophone (from [Aquarian](https://www.aquarianaudio.com/)), contact microphones and a [SOMA Ether](https://somasynths.com/ether/) radio demodulator are also plunged into the various inputs. Any of all of these devices can be implemented and used at any time during the walk. The output of the F8 is plugged into the Bela board stereo input. Connected to the Bela is a [Korg NanoKontrol](https://www.korg.com/us/products/computergear/nanokontrol2/) which allows me to control the patch, this is velcroed to the top of the bag.

{% include single-image.html fileName="ambulation/Credit_Jonathan_Turner2.jpg" %}

The output of the Bela is connected to an UFM transmitter which broadcasts the signal to the wireless headphones, worn by me and the audience. Headphones designed for silent discos do the trick, they are quite cheap and also readily available in many different countries (useful if I am invited abroad to conduct an Ambulation sound walk).

{% include single-image.html fileName="ambulation/Credit_SonicaFestival.jpg" %}

Using the Zoom and the NanoKontrol I am able to mix in different microphones, loop sounds, create different loop lengths, layer recordings, change the pitch and add delay lines and reverberance. The Pure Data patch is always being revisited and altered depending on the different environments I present Ambulation within. Ambulation isn't just developed in my studio and then presented through the performance, it's constantly in dialogue with the sonic environments I present it within and the listening technologies used.

{% include single-image.html fileName="ambulation/block-diagram.jpg" %}

In recent versions of the walk I have experimented with broadcasting the sound and video online, the audience then is not with me physically, but rather tuning in via an online stream. In this case I have the output of the Bela going to my laptop, alongside a webcam I am wearing on my chest, and then a laptop dealing with the stream. For this version of the walk I use my phone as a portable hotspot. In future it would be great to stream straight from the Bela, but I haven't worked out how to do that yet!

## Sound Processing

As mentioned above I am always changing the Pure Data processing system but here is a description of some of the tools and techniques I have developed for Ambulation:

{% include single-image.html fileName="ambulation/Credit_Jonathan_Turner.jpg" %}

### Sampler

In Pure Data I have three simple sample loopers which allow me to record the signal coming in from the Zoom audio recorder and loop it. These work using a three button system, one button starts the recording, the next stops it and starts the loop and the other clears the array. I can then, for example, record the siren from an ambulance and reintroduce it later in the walk. I can change the length of each looper to create different rhythms and textures. At the end of each performance I always empty the arrays.

### Spectral Freeze

This was made using the `[rfft~]` object in PD. By sending a feed of incoming audio, the Spectral Freeze instrument freezes the spectral character of the audio to create an ongoing drone, using a button mapped from the NanoKontrol. Freezing the frequency spectrum served as a textural element in the composition which was particularly useful for creating transitions between different sections of the walk. It can also create impressive effects when pitched sounds such as sirens, air vents and buskers occurred during the performance. With this instrument any occurrent sound could be instantly turned into a drone.

### Granular Moments

This part of the system allowed sounds to be recorded to the disk of the computer and then loaded into four separate wavetables. A single button on the NanoKontrol was used to randomise parameters for the position, size, frequency and volume of each grain. This gave a less predictable sound and was often used to improvise in transitional periods of the walk.

An example patch for an Ambulation soundwalk can be found [here](../../../../assets/images/ambulation/_main.pd).

## Future possibilities

I will soon participate in an online residency where I propose to develop Ambulation further, I would like to develop the technical system which supports the walk so that it incorporates other sense data collection and sonification (using portable sensors and other data streams). These could work well going straight into the BELA's analogue inputs. I also imagine further developing this piece as a lockdown project, going on walks and presenting them online to a remote audiences.

{% include single-image.html fileName="ambulation/Credit_TimShaw.jpg" %}

More detail of the soundwalk and system can be found in [this paper](https://www.nime.org/proceedings/2020/nime2020_paper4.pdf) I wrote for the NIME 2020 conference in collaboration with [John Bowers]().
