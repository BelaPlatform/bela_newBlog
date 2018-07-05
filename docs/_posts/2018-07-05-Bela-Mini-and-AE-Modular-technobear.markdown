---
layout: post
title: "Bela Mini and AE Modular are brought together by Technobear"
date: 2018-07-05
categories:
  - "Hardware"
  - "Instruments"
  - "Projects"
  - "Synths"
description: "Bela Mini and AE Modular are brought together by Technobear"
image: ae-modular/before.png
author: bela
hidden: true
---

[Mark Harris (AKA Technobear)](https://linktr.ee/thetechnobear) has made Bela mini into a module that fits snuggly into [Tangible Waves' AE Modular synthesiser](http://tangiblewaves.weebly.com/store/c5/AE_modular%3A_modules.html), the budget modular system that is based on a new maker-friendly standard.

<div>
<blockquote class="instagram-media" data-instgrm-permalink="https://www.instagram.com/p/BkkV18Tg768/" data-instgrm-version="8" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:658px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:8px;"> <div style=" background:#F8F8F8; line-height:0; margin-top:40px; padding:50.0% 0; text-align:center; width:100%;"> <div style=" background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAMAAAApWqozAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAMUExURczMzPf399fX1+bm5mzY9AMAAADiSURBVDjLvZXbEsMgCES5/P8/t9FuRVCRmU73JWlzosgSIIZURCjo/ad+EQJJB4Hv8BFt+IDpQoCx1wjOSBFhh2XssxEIYn3ulI/6MNReE07UIWJEv8UEOWDS88LY97kqyTliJKKtuYBbruAyVh5wOHiXmpi5we58Ek028czwyuQdLKPG1Bkb4NnM+VeAnfHqn1k4+GPT6uGQcvu2h2OVuIf/gWUFyy8OWEpdyZSa3aVCqpVoVvzZZ2VTnn2wU8qzVjDDetO90GSy9mVLqtgYSy231MxrY6I2gGqjrTY0L8fxCxfCBbhWrsYYAAAAAElFTkSuQmCC); display:block; height:44px; margin:0 auto -44px; position:relative; top:-22px; width:44px;"></div></div><p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;"><a href="https://www.instagram.com/p/BkkV18Tg768/" style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none;" target="_blank">A post shared by Mark Harris (@thetechnobear)</a> on <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;" datetime="2018-06-28T12:13:43+00:00">Jun 28, 2018 at 5:13am PDT</time></p></div></blockquote> <script async defer src="//www.instagram.com/embed.js"></script>
</div>

## AE Modular

The AE Modular system created by Tangible Waves first appeared on [kickstarter in 2016](https://www.kickstarter.com/projects/562102529/ae-modular-a-modular-synthesizer-for-everyone) and has kept on growing in both popularity and the number of [available modules](http://tangiblewaves.weebly.com/store/c5/AE_modular%3A_modules.html) since.

{% include single-image.html fileName="ae-modular/ae-modular.jpg" %}


AE Modular was created to make modular synthesis available to musicians at a much lower price point.
In order to cut costs Tangible Waves opted to create a new standard for modular synthesisers that differs from the predominant Eurorack standard. 
Firstly instead of basing everything on patching that requires jack sockets and patching cables the AE Modular uses pin headers and jumper cables that will be familiar to those of you that have used breadboards for prototyping. 
This has the effect of making things much cheaper but also means that the modules can be miniaturised significantly.
The other main difference is the voltage that the system runs on: 5V max as opposed to the 12V of Eurorack. 
This makes the modules much more appealing to DIY and maker communities who are used to building devices with microcontrollers like Arduino or Teensy, or embedded platforms like Bela, and this is where Technobear comes in!


## Technobear

Mark Harris (AKA technobear) is a well-known contributor to many open-source music projects and has been a great supporter and contributor to the Bela project since the beginning. Of particular note is his [Orac system](https://www.youtube.com/watch?time_continue=3&v=-m8p9E-WGWE) which works on the [Critter & Guitari Organelle](https://www.critterandguitari.com/products/organelle) and will be [coming soon to Bela](https://forum.bela.io/d/547-orac-coming-soon-to-bela/6), to be featured here as soon as it does. In this case he has explored the meeting place of AE Modular and the [Bela Mini](https://shop.bela.io/bela-mini) that we launched earlier in the year.

{% include single-image.html fileName="ae-modular/before.png" caption="Bela Mini sitting inside the AE modular rig."%}

## Bela Mini meets AE Modular

The module features the following:

- 8 CV input
- 2 audio/cv outputs
- All based on Bela Mini, so A8 1ghz, low latency
- All fits in an AE Modular, 2U module (5x10x3cm!)
    


{% include double-image.html left="ae-modular/sideview.png" right="ae-modular/innerview.png" caption="The minature module from the side and the custom breakouts created to interface with the AE modular rig."%}


Getting this to fit into the AE Modular 2U format was such a tight squeeze that Mark even had to trim the Bela sticker! He managed to pack in 8 voltage dividers, a mcp 6002 with 4 resistors, and 2 headers for patching on a 5x3 cm board.

{% include double-image.html left="ae-modular/breakout-top.png" right="ae-modular/breakout-bottom.png" caption="The top and bottom of the breakout for the Bela Mini."%}

Look out for future extension boards that could feature digital I/O and some LEDs too. For more detailed information on this build you can visit the [orginal forum post](https://forum.bela.io/d/591-belamini-and-ae-modular) where Technobear discusses the project.




