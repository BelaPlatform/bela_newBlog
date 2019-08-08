---
layout: post
title: "Towards Disabled Artist-led Music Technology by Charles Matthews"
date: 2019-10-15
categories:
- "Projects"
- "Hardware"
- "Instruments"
description: "Towards Disabled Artist-led Music Technology by Charles Matthews"
image: matthews/header.jpg
author: bela
---

In this post [Charles Matthews](http://ardisson.net/a/) guides us through his work with accessibility, instrument design, and Bela, and shares his thoughts on the future of instrument development in relation to disability. Over to Charles.

When the Bela team asked me to write a guest blog post about what I’m doing with the platform, I knew that it wasn’t going to be straightforward, particularly because I believe there’s a message behind most of this work that will get lost behind the fancy bleeps and flashing lights.  So I’d like to cut straight to the chase straight away.

The essence of this post is as follows: **embedded computing is bringing adaptability to instrument development in ways that seemed like wild science fiction only a few years ago.  But we need to work harder to open access up. Maintaining an open source approach is one way of going about this. The means to adapt and extend sit at the heart of access.**

## Coming to Bela

I use Bela on a daily basis and have for the last couple of years. As an embedded computer designed to handle sound it helps me move from making controllers, toward making what I might more readily call instruments. Self-contained objects that don’t always require an expensive laptop sitting at the side doing all the hard work. This helps create a context that de-emphasises screens and helps explore more tangible types of interaction.

Are screens and laptops still relevant? Absolutely, as toxic as I might find them myself in situations that demand social interactions (that’s another blog post, perhaps)! But these new instruments afford different kinds of interaction. Less things to plug in (which can mean less barriers on setting something up independently) with many more options.

## Accessible Music Technology

Technology like Bela is rapidly becoming a key ingredient in making what we could call accessible music technology. It’s commonplace to use “AMT” as shorthand for this (the A is kind of interchangeable between accessible, assistive, or adapted)..but I find myself increasingly questioning that label. We could argue that all music technology should be accessible, but there will always be exceptions — and this also downplays a very important point: what’s still often lacking in accessible music technology is the direct involvement of the people it claims to engage. In my opinion, if we approach Access first, rather than compromising with an abstract notion of accessibility, the conversations and inclusion we seek are more likely to take place.

Working within well-intentioned frameworks like *Universal Design* or *Design Thinking*, designers often lose their way by making assumptions about accessibility rather than engaging in direct dialogue or action.  This can lead to the development of what Liz Jackson has recently identified as “Disability Dongles”: a well intended, elegant, yet useless solution to a problem we never knew we had”. For example, gloves that translate sign language into English, or expensive wheelchairs that can negotiate stairs (I’ve held back on my opinions on equivalents in our scene, at least for now... it’s complex). These are items that place responsibility onto the individual to adapt, rather than addressing issues with the environment or culture. Jackson suggests another approach, which she calls *Design Questioning*. Please feel free to abandon this post and go and listen to her speak about it herself [here](https://www.youtube.com/watch?v=qiP_W1x0cV4).

The “AMT” scene is, of course, prone to the same problems. Digital instruments bring an immediate and highly adaptable approach to sound, but while the gap between musician and coder is narrowing in some fields, it’s still a fairly exclusive scene due to narrow points of access being represented. Accessibility in this context is too often taken to mean the inclusion of a touch screen, large buttons, or a proximity sensor.

## Designing for Inclusivity

In many cases, instruments are produced for therapeutic purposes or designed to be operated by people taking roles of facilitators or carers rather than affording direct control, and these constraints are accepted as the norm.  And if a device can make a pleasant noise with minimal effort, well, that’s often regarded as a sufficient marker of success. Is this good enough? Well, to be honest, maybe sometimes it can be, because that very direct removal of a barrier can be a way of bypassing cultural gatekeepers and focussing on the communication and power that noise-making gives us. But as an act of compromise, does this really represent the creative potential and voice of Disabled musicians? What of the expression found in years of practicing an instrument? This stuff is hard, for a reason – access is not the same as easiness.

Meanwhile, Disabled people continue to innovate and adapt by hacking individual solutions, which end up sitting outside the central flow of development.  
Organisations like Drake Music, led by Disabled artists, are beginning to address this situation with statements like “by and with rather than for” at the recent DMLab instrument hacking community relaunch.  This echoes the “nothing about us without us” slogan adopted by the Disability rights movement in the 90s, and refocuses activities on the social model of Disability.

So what about this new wave of tools? By providing opportunities for rapid prototyping that doesn’t require constant attachment to computers, I hope that technology along the lines of the Bela platform can help pave the way for more musical instruments designed and created by Disabled people. That is to say, “Disabled artist-led music technology” rather than just “accessible music technology”.  

It’s a shift that I’m starting to feel in my own practice, as the person usually identified as the non-Disabled partner in instrument building collaborations (although this is not always the case), and as someone seeking conversations around these issues of access and inclusion, beginning to engaging with Disabled arts and culture, in my more individual experiments.


{% include single-image.html fileName="magpick/pasted-image.jpg" %}

# Bela-based projects engaging with access

Most of these examples have either been developed with the support of [Drake Music]() or have been possible through contact with the DMLab community and hackathon events.




## Hardware

To maintain a good signal-to-noise ratio with such a small signal, two specialised amplifier circuits, described in the publication Magpick: an Augmented Guitar Pick for Nuanced Control, were designed. Each amplifier produces a type of signal, which we’ll refer to as integrator and proportional, with different characteristics. The integrator signal (see image below in blue) is useful to detect slower motions, such as waving the Magpick above the magnets. The proportional signal (see image below in orange) is suitable for detecting high-frequency transient events such as the snap of the pick following plucking a string.

{% include single-image.html fileName="magpick/2magpick2.png" %}

The amplified signals were connected to two analog inputs of a Bela Mini. The signal from the electric guitar (guitar-signal) itself is connected to a third input. In the Bela board, the three signals are combined with a Pure Data patch that processes the sound to be sent to the guitar amplifier.  

{% include single-image.html fileName="magpick/3magpick3Gif.gif" %}


## Sound Design

So far, we developed three different sound designs that combine the guitar signal with the control signals generated by the Magpick.

### **1) Volume Swell**

The most direct combination of the pick signal with the guitar-signal is a simple multiplication of the two. This condition allows guitarists to control the envelope of the sound by moving the pick above the strings after the strings are plucked. As an example, to achieve a gradual attack, a guitarist would pluck the string(s) on the fretboard and slowly move the plucking hand holding the Magpick over the neck pickup. Then, she could air-strum above the strings to control the sustain.

{% include youtube.html youtube="MZIKEEDMzDQ" %}

In this condition, air-strumming above the strings in the pickup area results in a nuanced tremolo effect with a higher degree of control and expressivity with respect to tremolo pedals. Regular tremolo effects use low frequency oscillators to affect the amplitude of the guitar signals.

{% include youtube.html youtube="09sDsUIVr2Y" %}


### **2) Harmonised Delay**

In this condition the output is a combination of the guitar signal sent to the output unprocessed plus an effected version of the guitar-signal with one or more parameters controlled by the pick-signal. As an example, we developed an audio-effect running on Bela and designed with Pure Data, which we named harmonised delay. The effect takes the guitar signal, performs an FFT and delay each resulting partial producing a spectral harmonic arpeggio that its summed to the guitar sound.

{% include youtube.html youtube="v0wWBLeoJJw" %}

The effect is triggered when the pick signal goes above a certain threshold. Then, the intensity of the pick-signal influences the number of the generated partials and the delay interval between them. This solution allows guitarists to control the speed of spectral arpeggios directly from the pick: the more intense the strumming the higher the frequencies are reached and the shorter the delay between them (in a range from 0 to 255 ms). Consequently, a high pick-signal reaches high frequencies and produces brighter harmonic sounds. The proportional preamp was used for its rapid transients. This effect relies on the low-latency feature of Bela as the whole process is based on a fast peak detection of the signal input to determine the resulting sonic output.

### **3) Scrambled Delay**

This effect is basically a simple granulator. It stores the last 5 seconds of the guitar signal in a buffer, then a portion of the recorded audio is randomly selected and played back at the original speed. The length of the selection varies each time randomly between 1 and 2 seconds. A fade-in and fade-out envelope is also added to each played back sound to improve the homogeneity of the output. Two of these playback buffers are active at the same time.

{% include youtube.html youtube="6NU81paEbis" %}

The volume of the effect is controlled by the pick-signal using the integrator preamp. This sound can be used as a sort of reversed delay on top of what a guitarist is playing or might even “record” a short phrase as per normal playing and then play it back, scrambled, by moving the Magpick above the pickup area.
The below pseudocode shows how little signal processing is needed to achieve a satisfying interaction when the sensor and physical design work well.

{% include single-image.html fileName="magpick/puredata-examples.png" %}

## Magpick

Magpick is an ongoing project. You can find more information in the research papers: [Magpick: an Augmented Guitar Pick for Nuanced Control](http://instrumentslab.org/data/andrea/2019NIMEFinal.pdf), and [Designing Creative Tensions between Concept and Embodied Practice](http://instrumentslab.org/data/andrea/2019CHIFinal.pdf). Stay tuned for further developments!
