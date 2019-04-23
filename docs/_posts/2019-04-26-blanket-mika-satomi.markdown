---
layout: post
title: "Kobakant Blanket"
date: 2019-04-26
categories:
- "Projects"
- "Hardware"
- "Instruments"
description: "Kobakant Blanket and Bela"
image: blanket/blanket_header_web.jpg
author: bela
---

Blanket is an example project/experiment by [Mika Satomi and Hannah Perner-Wilson from Kobakant](https://www.kobakant.at/?page_id=475) that uses Bela with e-Textile sensors. They made a crochet blanket with exposed conductive pieces so one can use their skin resistance to “play” music by touching different parts of the blanket.

The blanket was originally made for a small workshop, and it was connected to Teensy LC via breadboard and sending data to MaxMSP on a computer via USB serial. This time, Mika extended this project to connect with Bela, which runs PD on board. The experiment is to find out good ways to connect textile sensors with Bela.

{% include vimeo.html vimeo="327921201" %}

The code on this example is PD patch, which is based on the example from Esteban’s residency workshop patch. It is simplified to just to trigger sound files with thresholds. The sound files also come from Esteban’s patch.

## Breadboard

The first step was to add a small breadboard on Bela for experimenting and changing the circuitry as the prototype developed. "There was a cut-up breadboard in the studio already, so I cut it even smaller. Half of the standard breadboard width fits perfectly in the middle of Bela."

{% include double-image.html left="blanket/breadboard2.jpg" right="blanket/breadboard.jpg" %}

Then, standard breadboard jumper cables and wires were used to create temporary circuit connections on Bela. In this case, Mika developed resistive sensors with the analogue input pins by building voltage divider circuits.

{% include double-image.html left="blanket/jumpers.jpg" right="blanket/circuit.jpg" %}

To connect the breadboard to the textile sensors, she made knit cables with a popper on one side for the textile connection and a 2.54mm header pin on the other side for the breadboard.

## Knit cable

{% include double-image.html left="blanket/mill.jpg" right="blanket/cable4.jpg" %}

The knit tube was made with a knitting mill. Then it was cut into the length needed and closed with a crochet hook. Next, conductive thread (in this case, Mika used Karlgrimm copper thread in double) was inserted using a thick needle.

The ends of the conductive thread were each soldered onto a header pin. Then, hot glue was added on the connection so that the bending and pulling do not strain the solder joint.

{% include double-image.html left="blanket/cable.jpg" right="blanket/glue.jpg" %}

After soldering and hot-glueing, Mika connected the knitted tube ends with crochet hooks, and added a few more rounds of crochet up to the header pin to cover the glue.

{% include double-image.html left="blanket/knit2.jpg" right="blanket/knit.jpg" %}

A popper was added to the other end. Mika wrapped around the conductive thread around the popper ring before pressing so that the thread had good contact with the metal. This knit cable connects the conductive knit on the blanket with the circuit on the breadboard.

## Crochet patches

Additionally, Mika made a lot of crochet patches with Statex silver thread: "I used this one because this thread is soft and nice for crocheting, and I had a lot of it. Any conductive thread will work for this application. I used 2mm crochet hook and crochet with a combination of single and double crochet stitches."

{% include double-image.html left="blanket/patches.jpg" right="blanket/blanket.jpg" %}

For the last part, Mika placed the patches on the silver thread crochet line (made with chain stitch + single/double crochet) that was already attached to the blanket. Then, she sew the circle patches onto the blanket with regular cotton thread. It is important that the silver thread is tightly sewn together for a reliable electrical connection. The centre ends of the silver thread crochet line are punched with press snaps so they can connect to the knit cable described above.

You can find more photos of the process [here](https://www.flickr.com/photos/14412219@N04/albums/72157704235026542)

{% include single-image.html fileName="blanket/final.jpg" %}
