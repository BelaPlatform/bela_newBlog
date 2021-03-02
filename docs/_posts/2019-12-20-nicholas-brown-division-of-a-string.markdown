---
layout: post
title: "On the Division of a String (2019) by Nicholas Brown"
date: 2019-12-20
categories:
- "Projects"
- "Instruments"
- "Synths"
description: "On the Division of a String (2019) by Nicholas Brown"
image: brown/header.jpg
author: bela
---

In this post we introduce *On the Division of a String* (2019) by Dublin-based artist and composer [Nicholas Brown](http://nicholasbrown.co.uk/). The work is a six-channel installation-performance for monochord, Bela and loudspeakers.

{% include vimeo.html vimeo="377372042" %}

# Background to the work

*On the Division of a String* (2019) is a six-channel installation-performance for monochord and electronics. It forms part of an ongoing series of works by Nicholas Brown that investigates issues in medieval music theory.
The piece was developed with the Bela environment running Pure Data. It uses the Bela [audio expander cape](https://shop.bela.io/bela-audio-expander-capelet) to send audio signals to six small speakers distributed throughout the performance space.

{% include single-image.html fileName="brown/monochord-in-room.jpg" %}

*On the Division of a String* was first presented at Open Circuit 2019, a showcase of live sound art at the Orpheus Institute, Ghent, Belgium in September.


# Theory & Performance

Historically, the monochord's purpose was didactic. It was used mainly as a way of demonstrating intervallic relationships in musical sound, though there is some evidence that it was used as a performing instrument and, also, for pitch production in vocal pedagogy (see Cecil Adkins, '[The Technique of the Monochord](https://www.jstor.org/stable/932465)' (1967)).

In this installation-performance, the material properties of a string are taken as the basis for computer sound synthesis and the intervallic relationships or ‘divisions’ are used to create an algorithmic, electronic composition.

{% include single-image.html fileName="brown/monochord.jpg" %}


The performer establishes four, consecutive notes of a musical scale (tetrachord). This is done by replicating a method of determining superparticular proportions, as outlined in medieval treatises.

First, a given string length is divided into eight parts and a ninth is added (thus producing the ratio 9:8 or sesquioctava). Next, the same procedure is applied to this nine-part string length. Finally, the original string length is divided into three parts and a third is added.

{% include single-image.html fileName="brown/speaker.jpg" %}

This system produces two whole tones (9:8) and a Pythagorean semitone (256:243). Given that these divisions use superparticular proportions, each succeeding tone is lower in pitch than the previous tone.

Once each tone is established, it is sent to Bela for frequency analysis in Pure Data. An electronic sound is sculpted according to data from the analysis of the vibrating string. The ratios 9:8 and 256:243 are used to determine all computational operations performed upon the synthetic sound. An algorithmic composition takes shape, which is mixed live, using a midi controller. In this way, computer-generated sound is 'tuned' by a historical instrument once used for demonstrating the sonic properties of physical materials.

## Working with Bela

Nicholas had the following to say about his experience of working with Bela:

> What really interests me about the Bela platform is the way in which it can enhance ‘continuity’ between performer/composer and electronic instrument. The embeddedness and integration of the hardware within the performance environment is such that – from the performer’s perspective – it affords a high level of playfulness that can be difficult to achieve with a laptop/interface setup.

# About Nicholas Brown

Nicholas Brown (GB) is an artist-composer, performer and writer. His interdisciplinary practice spans musical performance, interactive installation, digital film, electroacoustic improvisation and handmade books. His work has been presented internationally at festivals, music venues and galleries such as Huddersfield Contemporary Music Festival; BBC Proms; Haarlem Koorbiënnale (NL); Sonorities (Belfast); Concertgebouw, Brugge; Lincoln Center (NY); Barbican Centre; Wigmore Hall; Riverside Studios; Kings Place (London); Science Gallery (Dublin); Turner Contemporary (Margate); Louise Blouin Foundation (Notting Hill) and Scenkonstmuseet (Stockholm).

{% include single-image.html fileName="brown/nicholas-brown.jpg" %}

He has also written scores for silent films, which have been recorded and released on DVD by the British Film Institute. Recent work includes *Chit-chat* (2017), an interactive installation for Science Gallery, Dublin that transforms a visitor's vocalisation into birdsong; *Vanishing Points* (2017) for clavichord, mobile phones and live electronics; and *The Undulatory Theory of Light* (2018), an installation-performance that investigates wave motion through interrelations between light, sound and water. Nicholas Brown was educated at Oxford University and Manhattan School of Music, New York. He holds the post of Ussher Assistant Professor in Sonic Arts at Trinity College Dublin and is an Associate Researcher at the Orpheus Institute, Ghent.

To learn more about Nicholas's work visit [his website](http://nicholasbrown.co.uk/).
