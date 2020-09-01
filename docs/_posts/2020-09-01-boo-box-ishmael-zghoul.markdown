---
layout: post
title: "The Boo Box by Ishmael Zghoul"
date: 2020-09-01
categories:
- "Projects"
- "Instruments"
- "Hardware"
- "Installations"
description: "The Boo Box by Ishmael Zghoul"
image: ishmael/boo-box.jpg
author: bela
---

The Boo Box packs in a looper, FM oscillators, a granulator, filters and more into a stage ready instrument/effects box. This project was created by the musician and free improviser Ishmael Zghoul who explains all below.


# Instruments for free improvisation

{% include single-image.html fileName="ishmael/side-angle.jpg" %}

This instrument/effects box, which I call my Boo Box (from the film Hook), was an evolution of an earlier creation on the [Axoloti platform](http://www.axoloti.com/). During the initial design stages, I had a few things in mind. I wanted a buffer/looper that was controllable through a midi foot controller, an analog joystick that was able to manipulate parameters via the x/y pots, and a few rows of potentiometers that would control other parameters that I could assign later on. I ended up adding a few digital buttons as well after tinkering with some patches and seeing how much room I had in the enclosure.

# The hardware

Now on to the Bela. Since the Bela board has 8 analog inputs and I needed 15, I used the [multiplexer capelet](https://shop.bela.io/collections/extras/products/multiplexer-capelet). After setting that up, I measured the size of the Bela and multiplexer plus a bit of buffer for the wires and pots and started researching enclosures. I went with a Hammond enclosure due to its simplicity (for the previous version I built a custom laser-cut enclosure, but that was a lot of work for me and with my level of experience so I went the lazier route this time).

{% include double-image.html left="ishmael/insides-1.jpg" right="ishmael/insides-2.jpg" %}

Same thing with the jack and pot holes: I went panel mount usb jacks, so that I could just drill a hole and install. I had to use a stepped drill bit for the large size of the joystick hole. After measuring everything and double checking if everything fitted I drilled away and tightened it all up. To mount the Bela in the enclosure I went with velcro because it was simple and effective. After that it was just a question of lots of soldering and testing.

# The patch

So what does the thing do? I guess before getting into that some background on my work would be helpful. I'm a cellist, guitarist, and improviser that works a lot with balancing electronic and acoustic sounds while performing and I wanted to design for that context. Here's a track that shows the Boo Box in action:

<iframe style="border: 0; width: 100%; height: 120px;" src="https://bandcamp.com/EmbeddedPlayer/album=144200718/size=large/bgcol=333333/linkcol=ffffff/tracklist=false/artwork=small/track=1008086306/transparent=true/" seamless><a href="http://nycnoise.bandcamp.com/album/stuff-i-like-vol-2">STUFF I LIKE VOL.2 by NYC NOISE</a></iframe>

In the Pure Data patch I run most of the time, there are a pair of FM oscillators that I use and manipulate in real time. There's also a triggered buffer that I can record into, and trigger random rhythmic variations of. I also have a trigger that morphs that buffer into a kind of granular playback, plus a function that uses the input volume to trigger feedback bursts. Last but not least I also have a trigger that turns the FM oscillators into a morse code sounding thing using a sine wave as an envelope filter.

# The Boo Box in Action

You can hear some more recent work where I use my 'Boo Box' all recorded during lockdown.

{% include youtube.html youtube="dNTT1Byfi50"%}

{% include youtube.html youtube="tAm9fghNsAQ"%}

# Ishmael Zghoul

If you're interested in some of my other work you can find out more info here: [https://linktr.ee/ishmaelalimusic](https://linktr.ee/ishmaelalimusic). There's a lot of projects from all over the place including a hip-hop/funk/free jazz outfit, a math rock improvising trio, a bunch of different free jazz/improvised music projects, and an all electronic duo.

{% include single-image.html fileName="ishmael/ishmael-zhgoul.jpg" caption="Ishmael Zghoul"%}

Thanks and I hope this helps someone out if they're starting off with Bela or thinking about it!
