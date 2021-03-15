---
layout: post
title: "BenderBox on Snarky Puppy's Grammy Award Winning Album"
date: 2021-03-15
categories:
  - "Synths"
  - "Hardware"
  - "Instruments"
  - "Events"
description: ""
image: tonebender/bobby-sparks.png
author: bela
---

This is the story of how Bela ended up on stage with Snarky Puppy and on their Grammy Award winning album: Live at the Royal Albert Hall. Over to the creator Steven Kruyswijk.

# Creating a pitch bender for Snarky Puppy

Back in 2013, as a freelance music technologist, I was fortunate enough to play a facilitating role in Snarky Puppy’s recording of their album [We Like It Here](https://store.snarkypuppy.com/collections/music/products/we-like-it-here-flac-download), probably most known nowadays for the epic keyboard solo Cory Henry performed on the track Lingus. I arranged a bunch of the keyboard instruments and things like a well-calibrated cutoff pedal for the Roland Juno; also I had brought my Dunlop Heil talk box just for laughs, which later turned out to be a nice sound for keyboardist Shaun Martin to use on the track Sleeper.

{% include youtube.html youtube="-7ClNGzOFNc" %}

Some years later, I saw Snarky Puppy perform their latest studio album live, via a stream of their Werchter festival appearance. The thing that struck me is that keyboardist Bobby Sparks (yes, they have a lot of keyboardists) was on the one hand playing a real Clavinet, but on the other... wasn’t able to bend notes on it, like he can with his own modified one, [on tour in the States](https://youtu.be/ulyop8hIxQk). This for me was the moment I thought “alright, time to make that thing I’ve been thinking of now”: a simple audio pitchbender effect driven by a typical synthesizer pitchbender control. Not the most exotic product idea ever, perhaps… but nonetheless non-existent!

# Building the BenderBox

Bela turned out to be the perfect platform to develop a usable, road-worthy prototype in very little time. Essentially taking a tutorial PD pitch bending patch, tweaking its parameters a little bit, connecting up a Roland pitchbender I had lying around… the basic, low-latency system was made essentially in a day.

{% include single-image.html fileName="tonebender/tonebender.jpg" %}

Next came typical challenges like designing and constructing a nice box for it - luckily my local hackerspace ([RevSpace.nl](https://revspace.nl/Main_Page)) provided ample means for that with a lasercutter. The box was designed in Fusion 360, making use of the parametric features within that to make a finger joint box with specific dimensions.

{% include single-image.html fileName="tonebender/bender-box-sides.jpg" %}

# Snarky Puppy

Eventually I made two prototypes for Snarky Puppy and sent them to the Pori Jazz Festival in Finland, where they were slated to perform. Seeing the pictures and videos of the BenderBox in action was very very cool.

{% include youtube.html youtube="-Ww6BVe4acE?t=59" %}

Later, it was a lot of fun to see it in action in the Royal Albert Hall, with Bobby Sparks again wailing on the clav - such a powerful sound in combination with wahwah and distortion. Fun was had by all. And now they even won a Grammy for the album they recorded there (category: best contemporary instrumental album)!

{% include single-image.html fileName="tonebender/bobby-sparks.png" caption="Picture by Riika Vaahtera." %}

Thanks a lot, Bela team, for facilitating cool stuff like this.

# Bobby Sparks with the BenderBox

Here are two of my favourite solos of Bobby Sparks on clavinet & BenderBox:

{% include youtube.html youtube="vxUDzdvBPaQ?t=228" caption="Salle Pleyel Paris, November 2019" %}

{% include youtube.html youtube="YMdckRq9SPg" caption="GroundUP Music Festival, February 2020" %}

# About Steven Kruyswijk

Steven Kruyswijk (1978) is mostly a Rhodes piano technician, but also likes to play around with digital stuff for music. He is currently living in Leidschendam, The Netherlands and is unsure what else to put in his bio; he can probably be found online, a tiny bit.
