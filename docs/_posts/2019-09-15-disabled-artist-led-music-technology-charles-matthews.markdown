---
layout: post
title: "Disabled Artist-led Music Technology by Charles Matthews"
date: 2019-08-15
categories:
- "Projects"
- "Hardware"
- "Instruments"
- "Education"
description: "Towards Disabled Artist-led Music Technology by Charles Matthews"
image: matthews/the-kellycaster-header.jpg
author: bela
hidden: true
---

In this post Charles Matthews guides us through his work in accessibility, education and musical instrument design. He explains how Bela has become a tool-of-choice and shares his thoughts on the future of instrument development in relation to disability. Over to Charles.

# Accessible Music Technology

When the Bela team asked me to write a guest blog post about what I’m doing with the platform, I knew that it wasn’t going to be straightforward, particularly because I believe there’s a message behind most of this work that risks getting lost behind the fancy bleeps and flashing lights!  For that reason I’d like to cut straight to the chase and give the essence of this post:
> **embedded computing is bringing adaptability to instrument development in ways that seemed like wild science fiction only a few years ago, however we need to work harder to open access up. Maintaining an open source approach is one way of going about this as to adapt and extend sit at the heart of access.**

## Bela in my work

I use Bela on a daily basis and have for the last couple of years. As an embedded computer designed to handle sound it helps me move from making controllers toward making what I might more readily call instruments: self-contained objects that don’t require an expensive laptop sitting at the side doing all the hard work. This helps create contexts that de-emphasises screens places the focus on more tangible types of interaction.

{% include single-image.html fileName="matthews/2-1024x768.jpg" caption="A visitor explores an exhibition of instruments created by a group of Disabled students through the Hidden Sounds course at City Lit. "%}

Screens and laptops are absolutely still relevant, as toxic as I might find them myself in situations that demand social interactions (that’s another blog post, perhaps), but these new instruments afford different kinds of interaction. Less things to plug in (which can mean less barriers on setting something up independently) with many more options to hand.

# Combatting Disability Dongles

Technology like Bela is rapidly becoming a key ingredient in making what we could call accessible music technology. It’s commonplace to use “AMT” as shorthand for this (the A is kind of interchangeable between accessible, assistive, or adapted) but I find myself increasingly questioning that label. We could argue that all music technology should be accessible to a degree. What’s still often lacking in accessible music technology is the direct involvement of the people it claims to engage in the design process. In my opinion, if we approach Access first, rather than compromising with an abstract notion of accessibility, the conversations and inclusion we seek are more likely to take place.

Working within well-intentioned frameworks like *Universal Design* or *Design Thinking*, designers often lose their way by making assumptions about accessibility rather than engaging in direct dialogue or action. This can lead to the development of what Liz Jackson has recently identified as “Disability Dongles”: a well intended, elegant, yet useless solution to a problem we never knew we had”. For example, gloves that translate sign language into English, or expensive wheelchairs that can negotiate stairs (I’ve held back on my opinions on equivalents in our scene, at least for now... it’s complex). These are items that place responsibility onto the individual to adapt, rather than addressing issues with the environment or culture. Jackson suggests another approach, which she calls [Design Questioning](https://www.youtube.com/watch?v=qiP_W1x0cV4).

The “AMT” scene is, of course, prone to the same problems as accessibly technology at large. Digital instruments bring an immediate and highly adaptable approach to controlling sound, yet accessibility in this context is too often taken to mean the inclusion of a touch screen, large buttons, or a proximity sensor, and had little to do with the person that is being granted the access.

# Designing for Inclusivity

In many cases instruments are produced for therapeutic purposes or designed to be operated by people taking roles of facilitators or carers rather than affording direct control, and these constraints are accepted as the norm. If a device can make a pleasant noise with minimal effort, well, that’s often regarded as a sufficient marker of success. Is this good enough? Well, to be honest, maybe sometimes it can be, because that very direct removal of a barrier can be a way of bypassing cultural gatekeepers and focusing on the communication and power that noise-making gives us. But as an act of compromise, does this really represent the creative potential and voice of Disabled musicians? What of the expression found in years of practicing an instrument? This stuff is hard, for a reason – access is not the same as easiness.

In the meantime Disabled people continue to innovate and adapt by hacking individual solutions, which end up sitting outside the central flow of development.
Organisations like Drake Music, led by Disabled artists, are beginning to address this situation with statements like “by and with rather than for” at the recent DMLab instrument hacking community relaunch.  This echoes the “nothing about us without us” slogan adopted by the Disability rights movement in the 90s, and refocuses activities on the social model of Disability.

So what about this new wave of tools? By providing opportunities for rapid prototyping that doesn’t require constant attachment to computers, I hope that technology along the lines of the Bela platform can help pave the way for more musical instruments designed and created by Disabled people. That is to say, “Disabled artist-led music technology” rather than just “accessible music technology”.  

It’s a shift that I’m starting to feel in my own practice, as the person usually identified as the non-Disabled partner in instrument building collaborations (although this is not always the case), and as someone seeking conversations around these issues of access and inclusion, and from engaging with Disabled arts and culture in my more individual experiments.

---

## Bela-based projects engaging with access

Most of these examples have either been developed with the support of [Drake Music](https://www.drakemusic.org/) or have been possible through contact with the DMLab community and hackathon events. None of this happened overnight — I worked on many projects around access (some probably quite questionable) over the years before this, but it was contact with DM, and particularly the collaboration with John below, that really changed everything.


# The Kellycaster

I’d rather hand over to John Kelly for an introduction to the Kellycaster:

{% include youtube.html youtube="MnKfebjqvUY" %}

The Kellycaster is a guitar whose concept came from John Kelly. It came into being through a process of collaborative design with some essential support from Drake Music (and with a physical form developed by John Dickinson and Gawain Hewitt). The Kellycaster has six strings that feed into a digital pickup. Rather than using the traditional fretboard to shape notes and chords, the Kellycaster features a chord library that John selects and modifies for a given song into a song bank. Then these chords are selected live whilst playing using a MIDI keyboard or similar device. Bela is used to pick up the volume of the strings and map them to chords.

{% include single-image.html fileName="matthews/early-kellycaster.jpg" caption="An early prototype of the Kellycaster."%}


<!-- We maintained the computer connection rather than moving to that direct audio output straight away (against what I considered my better judgement) because this was the best way to ensure access without my being involved all the time.  Rather than optimising it prematurely by reducing everything to a self-contained box, we built the chord system upon the familiar Ableton Live interface, so John ended up gigging with it almost immediately, tailoring his own sound, and I would be able to respond to this in our development sessions. The interface was open to be remapped and hacked in real-time, and we could fight it out together to decide how the changes would make it into the code. -->

We’d made the initial prototype at a hackathon in a matter of hours, but the development process was not easy or quick by any stretch of the imagination. Trying to guess what was going to work for this instrument only got us so far: it took grit and tenacity on both sides to recognise that certain nuances were not coming through, and to find solutions in playing style or code without compromising the aesthetic. By half way through the project, I made a point only to work on the code while we were together. It was almost certainly a textbook example of how not to do design in the conventional sense, but it got us to where we needed to be. These processes we worked through together have given us tools for future projects. And we’re still speaking to each other.

{% include youtube.html youtube="AS9DKcbg-tg" %}

John: *“we have come so far and the journey continues, our dream now is an instrument with a jack connection to plug straight into an amp and of course implementing the ‘Boogie Bar’. [n.b. for the layperson: this means we’re finally going to replace the biro we have sellotaped to the guitar body with a proper joystick].* You can read a lot more about the guitar and development process on John’s [blog](https://rockinpaddy.wordpress.com/) and watch a video exploring our collaboration above.

# Planted Symphony

This project took place as part of the London Liberty Festival in 2017, and was a collaboration between Drake Music and Arts and Gardens.  We had a few R&D meetings, led by a design group of Disabled artists including Drake Music associate musicians, in which some rather outlandish ideas came up. Incorporating Bela, [Raspberry Pi](https://www.raspberrypi.org/), and [Touch Boards](https://www.bareconductive.com/shop/touch-board/) meant that we could bring sample players and proximity sensors to an outdoor setting, entirely battery powered and weatherproofed.

{% include youtube.html youtube="VsrFJWZ8Q0Q" %}

Among the instruments were seed clocks that responded to breath, switches that could be walked and wheeled over to play samples, and trees with capacitive sensors that sang back when visitors hugged them. These were all applications for which we’d usually rely upon a computer or a hardware sampler, which instead fitted neatly into a Tupperware box. These weren’t what I would necessarily describe as accessible instruments, but they presented a new set of options in this context. And they were a key element in an immersive experience through which the audience could engage in a piece of music, decide which area they preferred, and start dialog with musicians and guides on how to participate if the access options didn’t quite fit.

{% include youtube.html youtube="tXHV4HIHXL0" %}

This experience informed a project at Belvue School as part of Youth Music’s Exchanging Notes programme, which we dubbed “music outside the classroom”.
Together with young musicians, we ended up dismantling the sampler from Planted Symphony, embedding it in a Lazy Susan, which became a permanent box for the school’s music classes.

{% include youtube.html youtube="l2NEns0yYL0" %}

We also took similar devices outside as part of the [ImPArt performing arts summit](https://www.facebook.com/ImPArt.eu/posts/420230005214033) in Remscheid, Germany, last year.

<!-- # Light Recorders

Light Recorders are a set of small devices I created, which translate light and sound back and forth into vibrations. The project started as an attempt to bring the approach from Planted Symphony to my own work, to explore the boundaries of so-called accessible music technology, and to start exploring the “[aesthetics of access](http://www.disabilityartsinternational.org/blogs/2017/the-aesthetics-of-access)”.

{% include youtube.html youtube="lXiHe-UxsXI" %}

I quickly learnt that the latter part didn’t really work out without engaging with access and disability culture through dialog (turns out that making something a “multi-sensory experience” with some switches doesn’t really mean anything in abstract).  And in a few people’s eyes, this piece was a failure for other reasons: it never really looked like a finished piece..instead, in the first exhibition, I ended up sitting in the corner with a soldering iron for the most part, interrupting myself to come and talk directly with visitors and figure out how it should work..spending a whole day trying to connect a cable from one side of the room to the other. I later realised that I was playing on my ADHD traits to explore a sort of personal performance art that I’ve been fervently developing ever since.

Once I could accept that this was an unfinished piece, everything opened up. So the name “Light Recorders” has come to represent a glorious explosion of stuff..a resolutely unfinished piece with space for dialogue with whoever cares to engage.

Bela fits in here as a way to create sounds in response to the lights within a matter of minutes (and most of that is often waiting for the device to load up).  At a few pence each, and without the need for complex circuitry to get a result, photoresistors provide a great introduction to sensor-based instruments. -->

# Instrument Maker

<!-- {% include single-image.html fileName="matthews/4-1024x768.png" %} -->

[Instrument Maker](https://instrumentmaker.org/) is a sprawling project designed to open up instrument development. At its core is a library based on the visual programming environment Pure Data. This has expanded to include a set of AAC-style symbols and custom hardware (currently used to adapt... you guessed it... those wonderful Bela boards).

I started putting together the code for Instrument Maker with Gift Tshuma, a musician based in Montreal, as a way to develop some workshops soon to be launched with the Education Makers group at Milieux Institute. It builds upon existing repositories of code developed in a variety of contexts: developing for Drake Music and Wac Arts, teaching in universities, and those late night experimental sessions for their own sake.

{% include single-image.html fileName="matthews/4-1024x768.png" caption="Gift Tshuma (left) and Charles Matthews (right) exploring paper-based technology during a mini hack challenge we set ourselves, with the results displayed underneath." %}

We wanted to fill a gap we’d noticed in currently available resources. During an excited conversation about the potential for enhanced accessibility through “dataflow” programming, Gift challenged me to make a two minute demonstration video of the instrument making process.  Of course, I failed — there was just too much to explain to even make a few oscillators play notes from a scale. We went on to discuss how we could develop a set of abstractions to help find an entry point appropriate to that kind of context.  

Our aim is to find a situation where the spark of excitement, potential in that hackathon or workshop moment is led by the power being held by everyone involved.  Something to challenge gatekeeping and the existing barriers around assumed knowledge as well as more practical barriers to code. Of course, not everyone seeks independence or aspires to be an audio programmer. In fact, it can be damaging and frustrating to present a false impression of independence. Rather, we want people to know that the possibilities are out there, and that these shifts in power can take place.

{% include single-image.html fileName="matthews/im-scale.png" %}

With time, we started to add options for screen reader access, “easy read” versions of the code, and alternatives to the typical mouse-and-keyboard interfaces upon which this kind of programming environment usually relies. The Hidden Sounds group at City Lit started requesting symbols, which we developed together, and eventually turned into a whole collection.

I’ve often wondered if, when we’re operating iPad apps and setting presets in a typical school workshop, we may as well be learning to code — before we even make a start, upon the appearance of a computer or circuit board, the feedback I’ve noted from people in both situations is usually quite similar, along the lines of: “I can’t do this, I’m not a technical person”. This is of course a perfectly valid concern, but I’d like to see how we could challenge this established role or division of who can and should access the inner workings of these instruments.

{% include single-image.html fileName="matthews/5-1024x768.png" caption="A set of colourful symbols used for Instrument Maker." %}

So the introductory process we’ve worked out for Instrument Maker is very much based on how we’d try to find a comfortable, unpatronising path into these situations, with the goal of making music placed up front: setting out the parameters to make music in an individualised manner, through a series of questions, either in person or through simulated dialog with a computer, which gradually unfolds into exploring what we might call traditional code if so desired.

Robyn Steward has been instrumental in pushing this forward; we used Instrument Maker to develop her wireless effects pedal (which Robyn has named Barry) as part of her Emergent commission for Drake Music. We recently collaborated on an iPad app development workshop using this code, and Robyn’s opening statement on our worksheet says it all: “*it’s OK to make mistakes, making mistakes means you’re learning something*”.

{% include single-image.html fileName="matthews/barry.jpg" caption="Barry Mk3." %}

To accompany the code, we use a board that fits on top of the Bela as a sort of shield or “capelet”, with a typical “voltage divider” circuit built in: a simple construction to read the values of a sensor, but not exactly the easiest thing to get to grips with in a first session.  Just like the code, this gives us a solid starting point for some practical outcomes straight away in a workshop or demonstration.

{% include single-image.html fileName="matthews/7-1024x768.png" %}

The point is not just to simplify everything, although this can be part of a solution. Simplifying is not good enough if the ability to expand is closed off in the process. The real work lies in creating a way through the objects that help create a learning experience for those that want it, without getting in the way of those people who are confident to get stuck in. This isn’t the sort of thing that can be guessed or worked out through “empathy” – it’s only going to come about through conversation and direct involvement.

So that’s it for now... please let me know what you think of all this (I don’t keep a public email account, but you can reach me at @matthewscharles on Twitter).

You can learn more about Charles' work on his website: [http://ardisson.net/a/](http://ardisson.net/a/).
