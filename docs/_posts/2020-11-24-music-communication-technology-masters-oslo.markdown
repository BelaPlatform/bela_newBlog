---
layout: post
title: "Projects from the Music, Communication & Technology Master's in Norway"
date: 2020-11-24
categories:
  - Instruments
  - Hardware
  - Synths
  - Education
description: "In this post we look at some of the brilliant projects that have come from the MCT Master's."
image: mct-masters-part-1/header.jpg
author: bela
---

The [Music, Communication & Technology](https://www.ntnu.edu/studies/mmct/about) joint Master's programme takes place between the [Norwegian University of Science and Technology](https://www.ntnu.edu/) and the [University of Oslo](https://www.uio.no/english/). In this post we will take a look at some of the brilliant projects which have come from the Interactive Music Systems module which is taught using Bela and the Trill sensors.

# SamTar by Aleksander Tidemann

Aleksander's project was a prototype of an augmented electric guitar (SamTar) for playing and exploring sample-based music. He wanted to interact and playback samples through a guitar interface to hopefully generate some new perspectives on the sampler and even to create a few novel affordances.

{% include youtube.html youtube="ag4ZxI6KXrY" %}

The system uses a Bela, Pure data and 5 sensors all mounted on the face of an electric guitar.

## Design

To trigger samples on the SamTar you hit the one string that the instrument has. The hits trigger samples and also adjust the amplitude of the samples which are played back. The pitch of the samples is controlled via sensors on the neck of the guitar.

{% include single-image.html fileName="mct-masters-part-1/samtar-cape.jpg" caption="Custom cape designed for the SamTar." %}

### Choosing different samples with one button

To categorise and organise samples, Aleksander created a 2D sample-space in Pure Data to navigate various sample banks. The sample space is explored via a single button mounted on the guitar which skips to different segments and scenes when pressed.

{% include single-image.html fileName="mct-masters-part-1/samtar-samplespace.gif" caption="The p5.js GUI showing position in the sample space."%}

In this prototype a GUI in p5.js was also used to visually display the “location” of the player in the current sample-space.

For more info on the implementation see [this post](https://mct-master.github.io/interactive-music-systems/2020/10/17/aleksati-samtar.html).


# The Dolphin Drum by Simon Sandvik

Simon project turns a vase into a percussive tactile instrument which uses granular synthesis. It is a hollow vase with different textures on its surface making it ideal for a wide range of sound generation.

{% include youtube.html youtube="HFBOwTcPojY" %}

The vase has a speaker embedded inside so all the output acoustically feeds back into the system, picking up acoustic qualities of the vase. A piezo disc is mounted inside the vase which is used as the sound input for the system.

## Design

In addition to the vase which is the main part of the instrument, there is a 9DF accelerometer and a force sensitive resistor. By turning the accelerometer on three axes you can interact with multiple parameters of the granular synthesis: windowsize, pitch, and delay. The force sensor is mapped to control feedback in the system.

{% include single-image.html fileName="mct-masters-part-1/dolphin-drum.png" %}


### Controlling the Dolphin Drum

With a large amount of delay and feedback in the system, the performer is continuously reacting to the system's output and exploring the resultant sonic landscape. The dolphin drum is a dynamic toolbox for generating interesting sounds which are heavily reliant on the initial acoustic sound input.

{% include double-image.html right="mct-masters-part-1/dolphin-circuit.png" left="mct-masters-part-1/dolphin-patch.png" %}

Simon noted that controlling the parameters becomes a balancing act which is not so much about traditional instrument skill but is an exploratory journey which heavily relies on buildups, risers, noise, and percussive sounds.

For more info on the implementation see [this post](https://mct-master.github.io/interactive-music-systems/2020/10/16/simonrs-the-dolphin-drum.html).

# The Hyper Guitar by Thomas Anda

Thomas's project was a hyper guitar where the acoustic sounds from the instrument blends perfectly with the processed sounds.

{% include single-image.html fileName="mct-masters-part-1/hyper-guitar.png" %}

Watch a video of the project in action [here](https://youtu.be/gEq9EnWrApc).

## Design

This instrument uses a [9 DOF IMU LSM9DS1](https://www.sparkfun.com/products/13284) from SparkFun. This is an IMU which houses a 3-axis accelerometer, a 3-axis gyroscope and a 3-axis magnetometer and so gives you nine degrees of freedom (9DOF). If you analyse the output from the three sensors and fuse them together you can then calculate the roll, pitch and yaw.

Simon mapped the pitch and the roll of the 9DOF to different parameters of a spectral delay and a granular synthesis-patch. All of the audio-programming is done in Pure Data. In the GIF below you can see how the pitch is mapped to the bin-position of the spectral delay.

{% include single-image.html fileName="mct-masters-part-1/hyperguitar_pitch.gif" %}

Simon had the following to say about his project:

> ...the main issue when creating an interactive music system where you involve a guitar, is that you don't have much spare bandwidth. Both of your hands are involved in the sound creation and letting go of the strings will stop the musical output. Therefore a motion sensor fits perfectly in this context.

For more info on the implementation see [this post](https://mct-master.github.io/interactive-music-systems/2020/10/19/thomasanda-HyperGuitar.html).


# Musings with Bela by Jackson Goode

For Jackson's project he did an admirable job of bringing together a portable EEG reader and Bela, coupled with an accelerometer and potentiometers.

{% include single-image.html fileName="mct-masters-part-1/musings.png" %}

Watch a video of the project in action [here](https://youtu.be/gEq9EnWrApc?t=901).

## Design

This project incorporates a [Muse portable EEG headband](https://choosemuse.com/) with 4 electrodes recording at 256Hz which was communicated with via Bluetooth. This data was streamed to the Bela which also had a couple of potentiometers and an accelerometer attached.

{% include double-image.html right="mct-masters-part-1/jacksong_bela.jpg" left="mct-masters-part-1/jacksong_muse.jpg" %}

At the core of the system was a method for interpolating between short audio grains. Audio files are read into an array and these arrays are then interpolated using the external `iemmatrix`.

{% include single-image.html fileName="mct-masters-part-1/muse-pd.gif" %}

The two physical pots control an oscillator which reads from the resultant table, they serve as tuners for the synth whose timbre can explored by rotating the whole breadboard. The EEG stream modulates the amplitude of the read table so that, in theory, a wandering, active mind would lead to a distorted synth.

For lots more information on the implementation see [Jackson's post](https://mct-master.github.io/interactive-music-systems/2020/10/16/musings-bela.html).


# MTC Masters

The [Music, Communication & Technology](https://www.ntnu.edu/studies/mmct/about) (MCT) joint Master's programme takes place between the Norwegian University of Science and Technology and University of Oslo. These brilliant projects come from the Interactive Music Systems module where the focus is on building interactive systems and instruments using Bela and Trill amongst other components. For further information you can also check out their [blog](https://mct-master.github.io/).
