---
layout: post
title: "An Ensemble of Instruments by Fedde ten Berge: of Nature and Things"
date: 2017-12-12
categories:
  - "Instruments"
  - "Hardware"
  - "Projects"
description: "An Ensemble of Instruments by Fedde ten Berge: of Nature and Things"
image: fedde/KES-header.jpg
author: bela
---
In this post we present the work of Dutch artist [Fedde ten Berge](http://www.feddetenberge.nl/) who has created a beautiful and dazzling ensemble of instruments that use Bela.

{% include single-image.html fileName="fedde/of-nature-and-things.jpg" %}

Fedde ten Berge is a sound artist who creates work across different contexts and disciplines. In his project *Of Nature and Things* he has developed a series of sound installations that investigate the possible manifestations and combinations of different types of material. A recurring characteristic of these works is the use of ceramic, and a large part of his research focuses on expressing the electrical capacity and vibrational qualities of this material. In each of the three works presented below a ceramic object is combined with other kinds of material: some materials that have been found ready-made in nature, and others that have been strongly manipulated by man.

# Of Nature and Things

The result is a series of three objects, made in collaboration with ceramicist [Frank van Os](http://www.barst-keramiek.nl/), where the sonic, visual and sculptural qualities of the materials used are investigated, enriched and magnified for the approaching audience. The objects invite the audience to wonder and play: the sound sculptures seduce the viewer to be autonomous and personally interact with each work. The audience can explore the objects by moving closer and touching them with their hands, and when they do so the objects respond with intensified and designed electronic sound. They invite the audience to independently and carefully explore the layered possibilities of each work, forging a private experience, a relationship which grows between the objects and audience.

## The Shroom (De Shroom)
*The Shroom* focuses on the different levels of vibrations that are present in the physical reality of the artwork: electromagnetic, acoustic, material and structural vibrations are picked up using different sensing strategies. This enables *The Shroom* to 'respond' to the approach of the audience with carefully designed sound, allowing the visual design of the object to come into close relation with the sound design. 

{% include youtube.html youtube="H_Vx1c6edsM" %}

### Under the hood
*The Shroom* is a ceramic bowl that is mounted and balanced on a steel frame with metal cables. The ceramic clay is baked with steel dust which gives it a very high resistance and on the inside there is an additional layer of conductive alluminium foil. This makes the bowl a big capacitor that is very suitable for [proximity field capacitive sensing](http://sensorwiki.org/doku.php/sensors/capacitive). On the second PRU of the Beaglebone Black there is code which does the capacitive sensing at multiple frequencies. A [custom render.cpp](https://github.com/BelaPlatform/Bela/tree/master/examples/08-PureData/customRender) is sending the sensor values into Pure Data. 

Bela is mounted under the bowl and two electret microphones are used to pick up acoustic vibrations. A piezo sensor is also fitted against the inside of the bowl which is used to pick up mechanical vibrations in the ceramic. On the base an accelerometer is attached to pick up structural vibrations. All of these sensors are integrated at audio rate (with exception of the multi-frequency capacitive sensor) into an interactive sound design that is made with Pure Data which is compiled into efficient C-code with the [Enzien Heavy compiler](https://enzienaudio.com/).


## The Egg (Het Ei)

With *The Egg*, Fedde focused on creating a sculpture in which light and sound design are integrated into the structure of the object with no need for external speakers or lamps. The object aims to create a *total experience* based on the magical effect that an object can have on our physical reality. One part of the sound design is based on the crackling of eggshells. The intensity of each egg crackle is coupled to a light flash on the LED strips. For Fedde it is in the tightness of the light-sound interaction that the power of Bela is demonstrated. Another part of the sound design is based on a chord progression and synthesis technique called phase alligned formant synthesis which is described in the [Theory and Techniques of Electronic Music by Miller Puckette](http://msp.ucsd.edu/techniques.htm). When playing the egg there are three main nuances at work: when you move close to the egg the sound design becomes more intense, when you move out of the proximity field the chord changes, and when you touch the water the most intense effect is achieved.

{% include youtube.html youtube="CO8pXlg1LH4" %}

### Under the hood
*The Egg* is an interactive ceramic sculpture filled with water. The ceramic sculpture is placed on a wooden cabinet that holds downward facing loudspeakers and LED strips. The loudspeakers are facing an acoustic mirror. Like with *The Shroom* the ceramic is baked with steel dust allowing it to be turned into a big capacitor. With a switch underneath the installation you can select two or four output channels and again, the software for this sculpture was prototyped in Pure Data and then compiled into efficient C-code that runs on Bela with the [Enzien Heavy compiler](https://enzienaudio.com/).


## The Trunk (De Stonk)
Instead of the field proximity capacitive sensing used in the other works, *The Trunk* uses close proximity capacitive sensing. This enables the audience to use the water as a kind of aquatic percussion instrument, inspired on the water percussion performed by native tribes of Brasil. The design of the ceramic trays, which look a bit like exploded chocolate cakes, was inspired by the melted geometry by Salvador Dali.

{% include youtube.html youtube="u4fhq3H6imk" %}

### Under the hood
*The Trunk* in an interactive sound installation designed in a sandwich construction. On the bottom a steel saw blade with legs welded on it and a tree trunk on top of that. The tree trunk hold three ceramic trays. The trunk uses close proximity capacitive sensing, so when the water is touched something can be triggered. In this case samples of splashing water were used. While in the water the sample is fed into a feedback delay line. On the bottom side of the Trunk there are three piezo microphones. This amplifies and enriches the resonance of the wood and allows the tree disc to be played as a percussive instrument. Their signals are fed into three separated resonating filter banks that attenuate the spectrum of the wood in three registers: a high tone spectrum, a low one and a middle range. The base frequency of these filter banks is slightly modulated with a lfo. The low in / output delay of bela is very useful for the percussive aspect of installation.


# The Sound Experiment Station (De Klank Experimenteer Station)

{% include single-image.html fileName="fedde/KES_FeddetenBerge.jpg" %}

*The Sound Experiment Station* was initially designed as an educational tool for children in primary school. Fedde made four of them to take with him during visits to primary schools. This instrument is not just for children however, adults also enjoy playing it very much, and one of them is currently exhibited at [STEIM](http://steim.org/) in Amsterdam. The SES consists of several small acoustic instruments integrated into one approachable object. All of the instruments are supplemented with sensors and buttons that enable electronic audio manipulation.

{% include youtube.html youtube="snWp5qJVpNI" %}

### Under the hood
The SES is a laser cut wooden box with four arms, each of which can create different sounds by using instrument parts, sensors and microphones. All arms also have a control box with which loops can be made and manipulated and effects can be switched on and off. There are electrect microphone capsules, piezos and a guitar pickup on the inside of the cabinet. All potentiometers, buttons and switches are supplied to one of the analog inputs of the Bela via three [4051 multiplexers](http://www.ti.com/lit/ds/symlink/cd4051b.pdf). All synthesis and sound transformations were developed in Pure Data and compiled with the [Enzien Heavy Compiler](https://github.com/BelaPlatform/Bela/wiki/Running-Puredata-patches-on-Bela#heavy) to run on Bela.


# Using Bela
Fedde was one of the earliest supporters of Bela and was in attendance at our [STEIM workshop](http://blog.bela.io/2016/12/15/steim/) in 2016. Fedde had the following to say about his experience of using Bela: 

> Bela is a huge step forward for me when it comes to embedded computing allowing me to quickly get prototypes up and running through the drag-and-drop Pd patch IDE. This means that my creativity does not have to stand still for long. Prototyping, and more over the coming to a solid system when using a Raspberry Pi in standalone interactive sound installations often goes much slower. Bela and Beaglebone allows you to easily access code structures at multiple levels. In particular the ability to bake Pure Data patches to C-code using the Heavy compiler makes it a seriously powerful platform. The biggest advantage of Bela is that all sensor data are in the same loop as where the audio samples are written. This ensures a sublime high speed synchronization.


If you'd like to find out more about Fedde's work you can visit [his website](http://www.feddetenberge.nl/) and also find more videos [here](https://www.youtube.com/user/freddylimburg/videos). We'd like to thank Fedde for sharing his incredible work with us.
