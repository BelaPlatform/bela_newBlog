---
layout: post
title: "Crafting paper sensors: the embelashed toolkit"
date: 2020-07-31
categories:
  - Hardware
  - Software
  - Education
  - Tutorials
  - Workshops
description: "Introducing the embelashed toolkit for prototyping with paper sensors and Bela Mini."
image: becky-stewart/header.jpg
author: BeckyStewart
---

In this post Becky Stewart introduces the embelashed toolkit for prototyping with paper sensors and Bela Mini – a brilliant way to get started creating interactive projects from traditional craft materials.

# Crafting electronics

Digital crafts are a growing community with roots in both academic research (often found in academic conferences like [DIS](https://programs.sigchi.org/dis/2020/program/session/39147), [TEI](https://tei.acm.org/2020/program/), and [CHI](https://programs.sigchi.org/chi/2020/program/session/36704)) and DIY maker spaces (like the [eTextile Summer Camps](http://etextile-summercamp.org/) and [Spring Break](http://etextilespringbreak.org/) or products such as the [LilyPad](https://store.arduino.cc/lilypad-arduino-main-board), or [Chibitronics](https://store.arduino.cc/lilypad-arduino-main-board)). The exact definition of what constitutes a digital craft project can vary across those sub-communities, but are usually considered to be the combination of electronics and computing with materials often seen in hand-crafts like textiles and paper.

{% include single-image.html fileName="becky-stewart/pressure.gif" caption="Documentation showing how a pressure sensor could be used." %}

A big benefit to working with a material like paper is that is you don't need a lot of specialist knowledge or tools to get going. Everyday household items like scissors and glue along with the construction skills you learned in art class as a small child go a long way. You can very quickly make simple paper circuits - like making an LED light up - but when combined with code and sensors, you can also create sophisticated interactive projects like the work of [Jie Qi](http://technolojie.com/) which combine traditional craft techniques with digital technologies.

{% include youtube.html youtube="C1-pdgGn0SI" %}

However, those coming to electronics and coding for the first time via digital crafts quickly come up against some common barriers. The first is how to get started coding. If you want to make your paper creations interactive, you don't want to have to complete university-level coursework in computer science before making an LED turn on and off with a switch! And then the perhaps less obvious barrier is that there isn't a *normal* way to connect a paper circuit of copper tape or conductive paint to an electronics board like a Bela or Arduino.

To try and solve these problems, or at least make them more manageable, Bela teamed up with a group of researchers at Queen Mary University of London led by [Dr Becky Stewart](http://theleadingzero.com/) (Becky has since moved to Imperial College London). The result was the [embelashed toolkit](http://embelashed.org) for quickly prototyping interactive audio projects.

# The embelashed Toolkit

{% include single-image.html fileName="becky-stewart/pressure-sensors.jpg" caption="Two paper pressure sensors connected to a Bela Paper Capelet." %}

The toolkit consists of four main parts:

- [Paper sensor hardware and tutorials](http://embelashed.org/paper/paper-index.html#) - Downloadable templates that can be printed and cut out to make sensors with tutorials to guide you step-by-step. Plus a Paper Capelet and Pocket Connector system to simplify connecting your paper sensors to a Bela Mini.
- [Pure Data abstractions](http://embelashed.org/code/abstractions-index.html) - to simplify some of the messy part of the Pd language and make some common functions wrapped up and ready to go.
- [Pure Data examples](http://embelashed.org/code/examples-index.html) - a collection of working Pd examples showing how to use the abstractions and also just to give a starting point so you aren't stuck staring at a blank patcher window.

Both the abstractions and examples work with any Bela board and analog or digital sensor. You don't have to use the paper sensors or the Paper Capelet. Equally, you can use the paper sensors and Pocket Connectors with other boards like Arduinos, they aren't Bela-specific.

## More About the Hardware

{% include single-image.html fileName="becky-stewart/paper-switch.jpg" caption="Paper switch sensor." %}

The paper sensors use a variety of techniques. Some like the [button switch](http://embelashed.org/paper/sensors/button-switch.html) use cleverly folded paper with copper tape, while others like the [piezo vibration sensor](http://embelashed.org/paper/sensors/piezo.html) combine off-the-shelf electronics components with a copper tape circuit. You can solder these circuits together or cold-solder with [Bare Conductive Electric Paint](https://www.bareconductive.com/shop/electric-paint-10ml/).

{% include single-image.html fileName="becky-stewart/pocket-connector.jpg" caption="Pocket Connector." %}

To connect the paper sensors to a Bela Mini, the [Paper Capelet](http://embelashed.org/paper/paper-capelet.html) can be  used. It sits on top of the Bela Mini and breaks out four analog and four digital inputs (though only a total of four of either type can be used at the same time). Grove connectors then connect to Pocket Connectors which provide a non-permanent way to hook up a paper sensor.

{% include single-image.html fileName="becky-stewart/velo1_small2.png" caption="Circuit guide for creating the pressure sensor." %}

The Paper Capelet and Pocket Connectors are not going to be Bela products, so you won't be able to buy them in the Bela shop. However, they are open-source hardware and you can [order them directly from OSH Park](https://oshpark.com/shared_projects/EoGQSTLz). You will need to solder them together yourself, but there are instructions to guide you through the process on the [embelashed site](http://embelashed.org/paper/paper-capelet.html).


# Workshops That Shaped the Toolkit

{% include single-image.html fileName="becky-stewart/e-stitches-workshop.jpg" caption="Ideation workshop run at the V&A with e-Stitches London." %}

The research team ran a lot of development workshops to work out the best way to write the code and figure out what sensors were the most useful. Around a dozen workshops were run across the UK and Europe with just under 200 participants.

The most recent workshop was run at [Audio Mostly](https://audiomostly.com/2019/) in September 2019. Participants learned how to make custom sensors and program Bela Minis with Pd in the space of an afternoon.

{% include single-image.html fileName="becky-stewart/audio-mostly-workshop.jpg" caption="Constructing sensors at Audio Mostly 2019." %}

# More To Come

The embelashed project isn't stopping at just working with paper, there will be more materials like textiles coming as well. So keep an eye out on future developments. And in the meantime, let us know what you make with the embelashed toolkit. Tag your posts with `#embelashed` and feel free to reach out to [Becky](mailto:r.stewart@imperial.ac.uk).

{% include single-image.html fileName="becky-stewart/build-instructions.jpg" caption="Build instructions for making a magnetic field sensor." %}
