---
layout: post
title: "Making E-Textile Interfaces with Trill Craft"
date: 2020-09-25
categories:
  - Tutorials
  - Hardware
  - Education
description: "Making E-Textile Interfaces with Trill Craft"
image: becky-tutorial/header.jpg
author: BeckyStewart
---

The world of e-textiles and smart fabrics is developing at a fast pace and now more materials than ever are available for makers and hobbyists to experiment with. In our latest video Becky Stewart gives a tutorial on making e-textile interfaces.

{% include youtube.html youtube="ClBYyYEFkF0" %}

# Working with conductive thread and fabric

Trill sensors make adding capacitive touch interactions to any project incredibly simple. You have a lot of different options with the different shapes like [Trill Square](https://shop.bela.io/collections/trill/products/trill-square) or [Trill Ring](https://shop.bela.io/collections/trill/products/trill-ring) which use the same sensing chip and processing, just with the sensor electrodes in different configurations. [Trill Craft](https://shop.bela.io/collections/trill/products/trill-craft) is different from all the others in that it doesn’t have pre-made electrodes — or at least it’s designed expecting that you would add on your own.

{% include single-image.html fileName="becky-tutorial/multimeter-craft.gif" %}

This means you can break free from PCBs and work with other materials like conductive textiles or paper circuitry. However, it can be deceptively difficult to figure out the best way to connect a PCB like the Trill Craft with a flexible material like paper or fabric. In this video we go through one way you can build robust electrical connections between the Trill Craft PCB and an e-textile circuit to create a fabric breakout board.

Let’s sum up what we’re going to do really quickly, we’re going to use conductive thread to sew an electrical trace away from the Trill Craft PCB. We’ll cover the ends of that sewn trace with a conductive fabric pad, and then place a press-fit snap onto that fabric pad to provide a non-permanent electrical contact point so that we can attach and detach our Trill Craft from a larger touch interface. In the video we go through each of those steps in a bit more detail.


# Materials used in this tutorial

### Felt or other base fabric

You’ll need a base fabric that isn’t conductive to act as your substrate holding the whole circuit together. I like working with felt as you don’t need to treat the cut edges at all to keep the fabric together. Choose whatever fits your project the best.

### Conductive thread

You will need some conductive thread. Exactly which thread you use is not essential. You’ll want a thread that is easy to handle when hand sewing without fraying too much, but that is also not too rigid as you need to thread it onto a needle small enough to pass through the PCB electrode hole. I’m working with a polyester thread that has been nano-plated with silver with an electrical resistance of about 40 Ohms per meter. It’s approximately the same weight as an embroidery thread.

- [Electro-Fashion conductive thread from Kitronik](https://kitronik.co.uk/collections/e-textiles-conductive-thread/products/2722-conductive-thread-50-yards-45m)
- [Stainless Thin Conductive Thread from Adafruit](https://www.adafruit.com/product/640)
- [Conductive Thread Bobbin from Sparkfun](https://www.sparkfun.com/products/13814)

{% include single-image.html fileName="becky-tutorial/sewing-craft.gif" %}

### Conductive fabric

You will also need some conductive fabric, but not very much of it. Only a square centimetre for each electrode you want to break out. It’s a good idea to always keep all offcuts and scraps as this is when then come in handy. I’m using a conductive ripstop fabric.

- [Electro-Fashion conductive thread from Kitronik](https://kitronik.co.uk/collections/e-textiles-conductive-thread/products/2722-conductive-thread-50-yards-45m)
- [Stainless Thin Conductive Thread from Adafruit](https://www.adafruit.com/product/640)
- [Conductive Thread Bobbin from Sparkfun](https://www.sparkfun.com/products/13814)

{% include single-image.html fileName="becky-tutorial/partial-build.jpg" %}

### Iron-on adhesive

We won’t be sewing the conductive fabric, instead we’ll be bonding it. Get some iron-on adhesive — but not iron-on interfacing. You just want the sheet of glue. You’ll apply this to one side of your conductive fabric. I like to do this with a whole sheet of conductive fabric and then cut the fabric into the needed shapes later.


### Button snaps

The last of the haberdashery items are snaps. The [8mm mini-snaps by Prym](https://www.prym.com/en/non-sew-press-fastener-mini-8mm-silver-coloured-390360) are the smallest diameter press fit snaps I’ve found. You’ll want to avoid sewn-on versions unless you really like to sit and spend too much time sewing on snaps. And make sure you buy ones that are not coated, but are bare metal. It’s always a good idea to do a continuity test with a multimeter to make sure the surface is conductive.

{% include single-image.html fileName="becky-tutorial/button-snaps-action.jpg" %}

### Trill Craft

And last but certainly not least you’ll need a [Trill Craft](https://shop.bela.io/products/trill-craft). It comes without any headers soldered on, but does come with right-angle headers you can solder onto the I2C connection of the board. If you plan to use these headers or solder on any other connector, do that first before you go any further. I’ve soldered on the right-angle headers so that I can connect the Trill Craft to a Bela Mini.

{% include single-image.html fileName="becky-tutorial/button-snaps.jpg" %}


### Template

It’s helpful to work out the layout of your fabric breakout board digitally. You can download the template used here from the link below and open it in Inkscape or Illustrator. You can also design your own starting with the footprint of the Trill Craft using the PCB files provided by Bela. Open them in KiCAD and export any design to another image format.

Print out your template and cut out where the fabric pads and the Trill Craft will be placed. Then using tailor’s chalk trace the template onto your fabric. For this project we’ll only breakout the first 15 electrodes, but there’s nothing stopping you from adding the other 15 as well or changing the layout.

- [https://github.com/theleadingzero/trill-craft-etextiles](https://github.com/theleadingzero/trill-craft-etextiles)


# Find out more

On the Bela blog we have discussed similar topics in previous post for example we have looked at [e-textiles and wearable sensors](https://blog.bela.io/2019/01/26/e-textiles-embodied-interaction-bela/) and how they can be used with Bela for designing embodied sonic interactions.

{% include single-image.html fileName="e-textiles/header-01.jpg" %}

Mika Satomi from Kobakant has also contributed a post on working with a [crochet blanket with exposed conductive pieces](https://blog.bela.io/2019/04/24/blanket-mika-satomi/) so skin resistance cam  be used to play musical notes by touching different parts of the blanket.

{% include single-image.html fileName="blanket/final.jpg" %}

Most recently we have launched the [Embelashed toolkit](https://blog.bela.io/2020/07/31/paper-sensors-with-bela-using-embelashed/) for working with paper sensors.

{% include single-image.html fileName="becky-stewart/paper-switch.jpg" %}
