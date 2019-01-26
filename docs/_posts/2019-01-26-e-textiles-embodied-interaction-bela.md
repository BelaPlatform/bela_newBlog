---
layout: post
title: "E-Textiles, Wearable Sensors, and Sonic Interaction Design"
date: 2019-01-26
categories:
  - "Hardware"
  - "Projects"
  - "Events"
  - "Sound Design"
description: "E-Textiles, Wearable Sensors, and Sonic Interaction Design"
image: e-textiles/header-03.jpg
author: bela
---

A group of researchers at Queen Mary University of London have been investigating the meeting point of e-textiles, embedded computing and real-time control and manipulation of sound using Bela.

# E-Textiles: Future Sensing

{% include single-image.html fileName="e-textiles/e-textiles-collage-01.jpg" caption="Some examples of e-textiles projects by Berit Greinke and Rebecca Stewart from the Materials Lab at Queen Mary University."%}

As our interactions with the digital world happen increasingly through mobile, wearable and embedded devices, the way we interface with computers is also changing. 
E-textiles, or electronic textiles, are fabrics with electronics integrated within them. 
They allow body movement, or other kinds of environmental change, to be sensed but instead of using the hard silicon, copper and plastic of traditional sensors they do so through soft and flexible materials.

In recent years a growing number of researchers, designers, artists and engineers are returning to traditional manufacturing techniques and natural materials but with an added digital element.
As a design material, e-textiles can be placed anywhere traditional textiles can, from chair covers to bed sheets, clothing to car interiors. A large part of their appeal is the way they can unobtrusively fit into an interaction context: as a material they represent an intuitive and natural interface.

{% include single-image.html fileName="e-textiles/header-01.jpg" caption="Sketches of possible interactions with textile sensors by Sophie Skach."%}

In recent years e-textiles have been explored through a growing [DIY community](http://www.instructables.com/id/E-Textiles/) as well as through industrial and academic research. 
Noteworthy applications have been in the [rehabilitation of stroke survivors](https://dl.acm.org/citation.cfm?id=2854106) through the monitoring of movement with real-time feedback in order to build up muscle strength, in [smart fashion](https://www.levi.com/US/en_US/clothing/men/outerwear/levis-commuter-x-jacquard-by-google/p/286600000) where the controls of a phone can be embedded into the fabric of a garment, as well as in [soft robotics](https://smartech.gatech.edu/bitstream/handle/1853/49850/WHC_Skin_2012.pdf?sequence=1&isAllowed=y) where the malleable form of the robots require a flexible and deformable type of sensing. 


# Textile Sensor Types

E-textile sensors can be used to capture body movement discretely, without inhibiting the way the body naturally moves or causing discomfort. 
While there are a variety of movements that can be captured with specific sensors placed in different positions, stretch, pressure and orientation/tilt are the most versatile and robust types.

{% include single-image.html fileName="e-textiles/sensor-types-01.jpg" caption="Stretch sensor, pressure sensors and tilt sensor."%}


## Stretch sensors

Knitted stretch sensors are made of a knit fabric of conductive yarns, or alternatively from a non-conductive knit fabric coated in a conductive polymer. 
As they stretch they change their resistance because the stretching creates more contact points between the interlocked loops (stitches). In the above picture the stretch sensor is knitted from stainless steel and polyester yarn.

## Pressure sensors

Resistance-based pressure sensors rely on a material that changes its resistance under pressure; when two electrodes are placed on either side of the variable resistance material, the electrodes can measure the change in resistance when pressure is applied. 
In the above picture the pressure sensors are made of different conductive fabrics (copper, silver thread and silver coating) and resistive foam.

## Tilt sensors

A technique for making e-textile tilt sensors is to use gravity and haberdashery items like metal beads to maintain an electrical connection that is correlated with a particular orientation. In the above picture the tilt sensor is made from woven conductive fabric and twisted yarn.


# Interfacing E-Textiles with Hardware

One of the biggest challenges faced when working with e-textiles is how to make the connection between the soft textile sensors and the hard pins or connectors on the hardware used for reading from the sensors and doing something in response. In a recent project presented at the [TEI conference](http://tei-conf.org/) in Stockholm, [Sophie Skach](http://www.sophieskach.com/), [Rebecca Stewart](http://theleadingzero.com), [Anna Xambó](http://annaxambo.me/), [Ariane Stolfi](http://www.ariane.stolfi.org/), [Luca Turchet](http://www.lucaturchet.it/) and [Mathieu Barthet](https://www.researchgate.net/profile/Mathieu_Barthet) showcased a prototype system that aimed to make sketching embodied control of sound with wearable textile sensors easier. 

{% include single-image.html fileName="e-textiles/sophie-back.jpg" caption="Sophie Skach wearing the garment with integrated textile sensors. The Bela board attached to the back of the garment."%}

In order to deal with the connection problem a fabric circuit board, seen below, was created to provide a soft circuit breakout for five analog inputs and two digital inputs on the Bela board. Snap button fasteners provide an interface between the conductive fabric pads and the fabric connection cables which attach to the sensors. 
Wires soldered to header pins on one end, and stitched to the conductive fabric pads on the other, provide the connections between the Bela board and the fabric breakout.

{% include single-image.html fileName="e-textiles/bela-connectors-01.jpg" caption="The snap connectors for interfacing with the Bela board."%}

This system allows for e-textile sensors to be switched in and out quickly, and for embodied interactions with sound to be sketched and explored by attaching fabric sensors to different parts of the body. The sound in this particular case was all content from the [Audio Commons](https://www.audiocommons.org/) project, a web-based ecosystem focused on re-purposing crowd-sourced audio. The Bela board was communicating with the Audio Commons API over wi-fi and was able to retrieve samples in real time and load them onto the board ready for playback and manipulation which could be controlled by the e-textile sensors. If you'd like to read more about the technical implementation of this project then see [this paper](https://www.researchgate.net/publication/323768252_Embodied_Interactions_with_E-Textiles_and_the_Internet_of_Sounds_for_Performing_Arts).

# More to come...

{% include single-image.html fileName="e-textiles/coming-soon.JPG"%}

This project is still on-going and there will be some very exciting developments relating to Bela and e-textiles coming in the next few months. Watch this space!

