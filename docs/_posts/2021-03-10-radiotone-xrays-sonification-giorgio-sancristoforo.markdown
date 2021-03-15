---
layout: post
title: "The Radiotone X-ray Synthesiser: Sonifying Radioactivity"
date: 2021-03-11
categories:
  - "Installations"
  - "Hardware"
  - "Instruments"
  - "Software"
description: ""
image: radiotone/header.jpg
author: bela
---

Radiotone is an X-ray synthesiser which brings together Giorgio Sancristoforo's fascination with radioactivity, scientific experimentation and the sonification of natural phenomena. In this post we introduce Radiotone and have an interview with the artist.

{% include youtube.html youtube="gW1R3uycCM4" %}

# The Sound of Radioactivity

Giorgio Sancristoforo is an artist and software developer who defines his work as following a sci-art aesthetic. His output is extensive and varied, from software recreations of machines that made up the [Rai Studio di Fonologia](https://www.youtube.com/watch?v=BKiddiPyDsE&ab_channel=AndresD.) (Italy's Radiophonic Workshop in Milan which was established in 1955 as a place for exploring experimental electronic music in line with the GRM in Paris and WDR in Cologne), to synthesisers that use astrological data streams of the orbital patterns of the moons in our solar system to control the parameters of the instrument. We highly recommend having a deeper look at his work on [his website](https://www.giorgiosancristoforo.net) but in this post our focus is on Radiotone. Taking inspiration from the discoveries of [William Crookes](https://en.wikipedia.org/wiki/William_Crookes) and [Wilhelm Röntgen](https://en.wikipedia.org/wiki/Wilhelm_R%C3%B6ntgen), the Radiotone is a one-of-a-kind synthesizer that uses X-Rays to control and shape sound.

# The parts of the instrument

There are four core components to this instrument which can be seen in action in the above video:

1. High voltage generation via a Wimshurst machine
2. X-Ray generation via a Crookes’ tube
3. X-Ray detection via a military-grade Geiger Counter
4. Sound synthesis via Bela

{% include single-image.html fileName="radiotone/collage.jpg" caption="From top left clockwise: Wimshurst machine; Crookes’ tube; Bela; Geiger counter." %}

For further technical information on each of these components you can check our Giorgio's write up on [his website](https://www.giorgiosancristoforo.net/radiotone-synthesizer/). We now have an interview with the artist in which he explains his unique approach to sonification, his sci-art aesthetics and his experience working with Bela.

# Interview with Giorgio Sancristoforo

### The Radiotone sits somewhere between scientific experiment and musical instrument. Can tell us a bit about the relationship between natural phenomena and the aesthetic or emotive in your practice?

In the last two years I have defined the corpus of my sci-art aesthetic as based on two interrelated elements: my genome, and nuclear physics. My DNA is my "big data", my operating system.
It is the code that I want to explore, and tell the public. It is an immense amount of information which I have learned to translate into sounds and images by developing a very personal system based on Quaternary mathematics. Alongside this research there is radiation physics. How can these two disciplines be related to each other? DNA is the essence of life; from trees to humans, all cells are programmed like hardware with its software through this fascinating code. This code is not static, it is subject to change. Change and mutation are fundamental characteristics of life. We ourselves in everyday life are subject to a continuous transformation that we call age. The evolution of the species was made possible through the mutations of the genome. These mutations have different origins, they can derive from metabolic processes, they can be caused by chemical elements and they can also be due to the ionizing radiations that permeate the universe. There is no place in the universe where there is no radiation. Life was born and evolved in a soup of radiation. The earth is radioactive, water, air, stars, galaxies, nebulae … we are radioactive ourselves, the potassium and carbon in our bodies is partly radioactive.
All these energies in motion have contributed to create and transform us. Without nuclear reactions, no elements would exist and life would never have appeared in the universe.
If we need a place with very low radiation we have to create specialized laboratories hundreds of meters inside the mountains, lined with meters of bariate concrete.
And even so shielded, we are still bombarded with elusive particles such as neutrinos.

{% include single-image.html fileName="radiotone/overview.jpg" caption="Overview of the whole setup for Radiotone." %}

An interesting aspect of ionizing radiation and in particular of radioactive decay is the transmutation of the elements.
Radioactive matter, whether natural or artificial, is transformed into other elements on the periodic table in the decay process.
So in a sense there is a resonance between life and matter, nothing is static, everything is subject to change. It is what the middle age philosophers would call "natura naturans".
Now, this mutability of the cosmos is interesting to me because music is an art of time, of change.
Furthermore, radioactivity is a real stochastic process, unlike the pseudorandom numbers of computers.
This exploration of life (in the broadest possible sense of the term) as change is the focus of my research.
That's why I put my DNA and radiation together.
To bring about changes in the digitized version of myself (my whole genome sequenced in a lab) and discuss it with the public through art.
For the avoidance of doubt, however, I want to emphasize that I do not make political use of these themes as sometimes happens in nuclear art.
I do not criticize nuclear energy, I am not afraid of it, on the contrary I think it is essential to seriously address the climate crisis and the immense need for energy that we have.
My work is rather a metaphysical discourse on the essence of life.


### When mapping from the Geiger counter readings to the sound engine on Bela what kind of choices did you make about how the two relate?

In these years I have had my genome sequenced twice. Last time I got my whole complete genome.
That's a gargantuan amount of data.
Imagine that if we printed the human genome on A5 sheets, with characters of 9 points in size, and we hung these sheets on a wall 40 sheets high
(therefore 8 meters), this wall would be 6 kilometers long!
And each of our cells contains this incredible amount of data.
This is the blueprint of life, and there are beings far older than us, like trees, who have even larger genomes.

Now in this work, as in my last installation the [Tannhäuser Gate](https://www.giorgiosancristoforo.net/the-tannhauser-gate/), I have focused on some genes in particular, in which I have mutations that one day could possibly give rise to pathologies, such as the F5 gene which is responsible for thrombophilia, or the HFR gene whose mutations can give rise to hereditary hemochromatosis.
I have collected the gene sequences data around the mutations and use them as sound synthesis programming data within Bela and Pure Data.

{% include single-image.html fileName="radiotone/DSCF0034-768x467.jpg" caption="The German military-grade Geiger Counter from the cold war era." %}

At this point I use the radiation to generate mutations in the code and play the synthesizer I created.
In other words, radiation is the engine of change and the genome is what is changed.
I would call this "nuclear genetic generative music"


### Do you imagine this piece as an interactive installation that could be controlled by visitors to a gallery, as an instrument which could be controlled by a musician, or as a precomposed piece that is played by turning the handle?


I created this instrument as a performative instrument.
The X-Ray generation/detection is only a part of the Radiotone.
There is also a cosmic ray detector I can use to create music with muons particles and a gamma spectroscope that I use it with artificial radioisotopes and a Mac computer.
I use the spectroscope to create musical events out of antimatter annihilation, using a positron source of Sodium 22 radioisotope.
For that task I need to use powerful computers as it must do an intensive FFT at 192KHz.

{% include single-image.html fileName="radiotone/wim-550x828.jpg" caption="The Wimshurst machine for high voltage generation." %}

Unfortunately it would not be possible to use the Radiotone (in the X-Ray generation/detection configuration) as an installation,
as the public, using the machine would be exposed to a dose of X-Rays.
A 10 minutes use of the instrument gives a very small radiation dose, something like 430 times lower than a chest X-Ray (or equal to 30 minutes of flight on an airplane at cruise altitude),
but nevertheless I strictly follow the IAEA guidances, avoiding any irradiation of the public.
And this is why I always wear a professional dosimeter when I do these experiments, to keep the dose under control and avoid exposure to dangerous levels.

In the Tannhäuser Gate I use Sr90 radioisotopes that can be shielded easily with an aluminium projector/shield as they produce only beta radiation,
the Radiotone instead uses a cathode ray tube that generates X-Rays and it would be impractical to shield all that equipment.
However, distance and time are an effective means to work safely.


### Can you tell us some more detail about the FM synthesis sound engine that you have been using in your recent works?

I often work with sinusoidal tones. The reason is that being pure tones they do not introduce extraneous factors to the data I use.
For example if I want to sonify the sound of a radioactive decay, I translate and scale the energies of the peaks of the radiation spectrum which are expressed in KeV or MeV in Hz (which is appropriate because the energy of a particle is proportional to its frequency).

In the case of DNA, on the other hand, I find myself having to create  "sound proteins", using nucleotides organized in triplets (called codons in molecular biology). The number of amino acids that three nucleotides can create is 64.
So a sound will be composed of several triplets that will organize the various parameters of the synthesis. To use the mutations of these nucleotides, however, I have to use a non-decimal quaternary mathematics. Computers, as you know, work with 0s and 1s, but DNA can be imagined as a computer code based on 4, because it is made up of four types of molecules: thymine, cytosine, guanine and adenine.
So I assign 0, 1, 2 or 3 to these nitrogenous bases and what I get are triplets in quaternary numbers, for example the ATG codon, it would become 032 which in decimal corresponds to 14.
Using this technique that I have called phonosomes, I can organize a polyphonic FM synthesis by assigning to each parameter (frequency, intensity, modulation frequency, modulation index, envelopes) the value of an amino acid created by a triplet of nucleotides.

{% include single-image.html fileName="radiotone/Fonosomi.jpg" caption="A graphic representation of the sonification strategy." %}

Two things happen when radiation hits the geiger counter.
The first is the mutation of one or more nitrogenous bases and consequently of the triplets (and therefore of the sound),
and the second is that one or more of the voices of the FM genetic synthesizer is triggered.

FM is an ideal technique for this purpose because it is capable of creating very complex timbres from very simple numbers.
And nothing is added to these numbers. What you hear is the data.


### Finally how have you found working with Bela when creating this piece and what drew you to Bela in the first place?

More and more often I have to use embeddable technologies within the works I make.
SBCs are today fundamental for those who deal with meta sculptures and custom performance tools. If you create an installation that will remain on display for months, you cannot rely on traditional computers because you will not always be on location to turn the computer back on, and load the software if there is a problem.
You have to rely on technologies that do without a monitor and a keyboard (dimensions are crucial) and that start autonomously once you turn on the power.
Like many, I begun with raspberry Pis, then I started using more powerful SBCs like UDOO, but the best solution is the Bela because you don't have to waste too much time managing linux, creating scripts at startup, eliminating the graphical interface and all the rest that you don't need when the installation is in place.
Bela is what I've always dreamed of. A computer with Pure Data or Csound, which can also communicate with the many Arduinos I use. It’s easy to program, and you don't waste time in the maze of operating systems.
It is also a very economical and easy to replace solution in case of problems.

{% include single-image.html fileName="radiotone/four.png" %}

When creating interactive digital art, the biggest obstacles can come from the technology itself.
Bela solves a lot of practical problems and I really hope that Bela can continue to evolve by increasing the computing power.
Its web interface is a marvel and the board does not need an external audio interface. These are very important things.
My work is made up of a lot of technology and science as well as music and I really have a lot of things that I need to take care of.
Bela allows me to do extraordinary things without having to be an IT manager.
So, thanks guys. Keep it up.

# About Giorgio Sancristoforo

[Giorgio Sancristoforo](https://www.giorgiosancristoforo.net) is an artist and sound designer born in Milan in 1974.

Since 2006 he has written softwares for education and experimental music used by artists and teachers in more than 40 countries worldwide, among them, names like Curtis Roads, Ben Frost, Ryuichi Sakamoto, Richie Hawtin, Robert Lippok, and institutions such as Stanford’s CCRMA, the BBC Radiophonic Workshop, the Royal College of Music of Stockholm, the TUFTS University, the San Diego City College, the Centro National de las Artes of Mexico City.

His work in experimental music research has obtained the respect and appreciation of numerous composers, musicians and professors in the academic field. He became member of the AGON Contemporary Music Centre in 2010, founded by M° Luca Francesconi and M° Pietro Pirelli, and he’s member of the Prisma International Composers’ Group since 2015.

His work in music research led him to create two new sound synthesis techniques: the TAMS Tri-Axis Modal Synthesis,  and the Tropical Additive Synthesis: the first technique of computer music which uses a non-standard mathematics (Tropical Algebra), developed together with the Italian mathematician Prof.Cristiano Bocci, of the department of Mathematics of the Siena University.

His artistic practice is focused in the relationships between science and art, specialising in multimedia installations, soundscape, algorithmic music and radioactivity imaging, with a special interest in genomics and nuclear physics.
