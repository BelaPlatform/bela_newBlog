---
layout: post
title: "The Smart Cajón by Luca Turchet: a wireless electroacoustic instrument"
date: 2018-05-22
categories:
  - "Hardware"
  - "Instruments"
  - "Projects"
description: "The Smart Cajón by Luca Turchet: a wireless electroacoustic instrument"
image: cajon/header.png
author: bela
---

In this post [Luca Turchet](http://www.lucaturchet.it/) introduces us to the Smart Cajón, an acoustic percussion instrument that has been extended to include, sensors and actuators alongside wireless connectivity that he created using Bela. Over to Luca:


## Smart Cajón – version 1

The Smart Cajón is an exemplar of smart musical instruments. Smart Instruments are a family of musical instruments that embed intelligence and wireless connectivity to local and remote networks. They may be equipped with sensors, actuators, and a loudspeaker. The embedded intelligence is responsible to perform all computations related to audio and sensor processing, as well as to handle the communication with external world.
This post provides some details regarding the first prototype of Smart Cajón that I have made. This version of the instrument offers a sensor interface, embedded audio processing, Wi-Fi connectivity to a smartphone app, as well as haptic feedback thanks to motors embedded in a cushion where the player sits.

{% include youtube.html youtube="WFdvrfmVWlU" %}


## Inspiration 

The cajón is an instrument original from Peru, which to date is widespread across various musical genres. One of the genres in which the cajón has been largely employed is flamenco music. On the one hand, the inspiration for smartifying this instrument came from my passion for flamenco music and its rhythms. On the other hand, it originated from my curiosity about how to enhance the instrument in such a way that not only the sonic possibilities could be extended compared to those offered by the instrument in its original version, but also novel interactions could be enabled between the performer and the audience members. 
The developed instrument was co-designed together with five professional cajón players within the activities of a scientific research project.



## How it works

The instrument can be used according to the following three configurations:

* Virtual instrument configuration: the Smart Cajón let performers select and play four simulations of percussive instruments: drums, congas, bongo, djembe. 
* Audio effects configuration: the sound detected by the contact microphone is processed using a 10-band parametric equalizer chained with a reverberation effect. 
* Interactive sound control configuration: the sound captured by contact microphone is processed by audio effects (delay, frequency shifter, and reverberation), whose parameters are controlled from the sensors interface.




## Hardware

A conventional acoustic cajón was smartified with the following pieces of hardware: the Bela board for low-latency audio processing; a two-head contact microphone was attached to the interior side of the front panel ([Big Twin by K&K](https://kksound.com/products/bigtwin.php)); a small wireless router ([TL-WR902AC by TP-Link](https://www.tp-link.com/us/download/TL-WR902AC.html)), which features the IEEE 802.11ac Wi-Fi standard as well as a USB port for 4G dongles enabling Internet connectivity; a loudspeaker ([Monitor Supreme Center 250 by Magnat](https://magnathifimuseum.wordpress.com/tag/monitor-supreme-center-250/)) with small preamplifier ([SA-36A Pro HIFI Digital Amplifier by SMSL](http://www.smsl-audio.com/productshow.asp?id=101)); eight vibration motors ([307-103 by Precision Microdrives](https://www.precisionmicrodrives.com/product/307-103-9mm-vibration-motor-25mm-type)) embedded in the foam of a cushion; four digital buttons with LEDs of different colour; an inertial measurement unit (IMU), capable of tracking the instrument movements in tri-dimensional space ([BNO055 by Bosch](https://www.bosch-sensortec.com/bst/products/all_products/bno055)); two rounded force sensitive resistor sensors ([FSR 402 by Interlink Electronics](https://www.interlinkelectronics.com/fsr-402)), one ribbon sensor ([SoftPot by Spectral Symbol](http://www.spectrasymbol.com/product/softpot/)) and one strip force sensitive resistor sensor ([FSR 406 by Interlink Electronics](https://www.interlinkelectronics.com/fsr-406)). Power was supplied externally using AC power plugs.

The position of the sensors and of the rest of the smartifying equipment is illustrated in the figures below that show the front and rear part of the prototype.


{% include single-image.html fileName="cajon/final_design_front.png" %}

{% include single-image.html fileName="cajon/final_design_back.png" %}


## Software

Software for audio and sensor processing, and tactile stimuli generation was developed in [Pure Data](https://puredata.info/). Data reception and forwarding over Wi-Fi were achieved using Open Sound Control ([OSC](http://opensoundcontrol.org/introduction-osc)) over the User Datagram Protocol. 
The three configurations of the instrument can be selected from a dedicated smartphone app developed using the [TouchOSC](https://hexler.net/software/touchosc) environment. The app acts both as a visual display and as a control interface letting players or audience members program the instrument in real-time.

In the virtual instrument configuration, to trigger the sound samples we detected each hit by using the PD onset detector bonk∼. To determine the position of each hit according to two zones of the front panel, the top part and the central part, we developed a signal processing technique based on the spectral content of the hit. The technique relies on the fact that sounds produced by hitting the top part of the front panel have a richer high frequency content than sounds produced by hits on the central part for which the lower frequency content is dominant. To capture these differences, we computed the spectral centroid from the output of the bonk∼ object and used a discriminative threshold on it. Specifically, we calculated the centroid by utilizing the loudness and bandwidth of the first 5 of the 11 frequency bands produced by bonk∼. The hits associated to these two regions were then mapped to two distinct sound samples of the simulated instrument. The dynamics of each hit tracked by the bonk∼ object were mapped to the volume of the triggered samples. 

{% include single-image.html fileName="cajon/feature_extraction_1.jpeg" %}

Two banks of four presets were developed to simulate different percussive instruments: drum kit, bongo, djembe, and congas. Each preset was associated to a button with a specific LED color. The status and colour of the buttons were synchronized with information displayed in a smartphone app, from which the banks and presets could be navigated and selected. 
Tactile stimuli were generated using Pulse Width Modulation to produce four types of dynamics and patterns of activations on the eight motors embedded in the cushion.

In the audio effects configuration eight presets divided into two banks provided different tunings of the equalizer and reverberation effects applied to the sound captured by the microphone. These presets could be navigated and selected using both the buttons and the smartphone app. The app also displayed the status of the parameters of the two effects using faders and rotary knobs widgets. The same widgets could be used to interactively control the parameters of the effects.

{% include single-image.html fileName="cajon/feature_extraction_2.jpeg" %}

In the interactive sound control configuration, the sensors were used to control the parameters of audio effects applied to the sound captured by the contact microphone. The left and right FSRs controlled continuously the input volume of a delay effect with feedback, configured in two different ways so to have fast and slow decaying repetitions. The pitch component of the IMU was mapped to the room size parameter of a reverb; the roll of the IMU was mapped to a frequency shifter, in such a way that tilting the instrument to the left/right side caused a shift towards low/high frequencies; the four buttons were used to start or stop four backing tracks in different genres (flamenco, Brazilian jazz, blues, electronic pop); the ribbon sensor (under which a pressure sensor was placed so as to detect both pressure and position) was used to control the overall volume of electronically-generated sounds. The smartphone app displayed the parameters controlled by sensors in real time through knobs and faders. 

## Reflections on using Bela

Bela is a great tool for rapid prototyping. It provides designers of real-time systems with all the flexibility needed to quickly develop their ideas both at hardware and software level. This is possible thanks to the efficient tools offered by the Bela IDE and the underlying linux platform.

## Acknowledgements and references
This research has been supported by a Marie Curie Individual Fellowship of the European Commission, within the activities of the project “[Towards the Internet of Musical Things](www.iomut.eu)”. More details about the instrument can be found in the publications:

[L. Turchet, A. McPherson, M. Barthet. Co-design of a Smart Cajón. Journal of the Audio Engineering Society, vol. 66, no. 4, pp. 1–11, 2018](https://www.researchgate.net/publication/322998685_Co-design_of_a_Smart_Cajon).

[L. Turchet and M. Barthet. An Internet of Musical Things architecture for performers-audience tactile interactions. In Proceedings of the Digital Music Research Network Workshop, 2017](https://www.researchgate.net/publication/321950946_An_Internet_of_Musical_Things_architecture_for_performers-audience_tactile_interactions).


*Thanks to Luca for sharing this project with us!*

