---
layout: post
title: "Introducing the new Bela Mini"
date: 2018-02-22
categories:
  - "Software"
  - "Hardware"
  - "Projects"
description: "Introducing the new Bela Mini"
image: bela-mini-launch/header.jpg
author: bela
---

Bela Mini is the latest evolution of Bela, the open-source platform for responsive audio and sensor processing. It is now available for pre-order at a special discounted price.

<div style="text-align: center; margin-bottom: 10px;"><a href="https://shop.bela.io/bela-mini" name="Preorder Bela Mini now"><button name="button" style="font-size: larger; font-weight: bold; cursor: pointer; color: #ffffff; padding: 10px; background-color: #00bea4; border-radius: 4px; border: 4px #00bea4;">Preorder now</button></a></div>

Over the past two years Bela has been used to create hundred of interactive audio projects worldwide from musical instruments to sound installations, from e-textiles to assistive technology, as well as kinetic sculptures, research experiments and teaching tools. If you’re interested in creating interactive projects that use sensors and sound, then Bela is the platform for you.

{% include youtube.html youtube="Pp3dPinF6uM" %}


With Bela Mini we have condensed our original design to create a board that has all of Bela's most popular features, but in a tiny package. Bela Mini is one third of the size of the original Bela board, ready to be embedded in more places than ever before. Based on the new [PocketBeagle](http://beagleboard.org/pocket) open-source computer, Bela Mini is completely compatible with all the great software features of the original board including the browser-based IDE with oscilloscope, support for multiple coding languages, libraries of examples, and easy connectivity with various sensor types.

{% include single-image.html fileName="bela-mini-launch/belamini.gif" %}

## Tech specs

Bela Mini is based on the [PocketBeagle](http://beagleboard.org/pocket) "key-fob computer", an ultra-tiny open-source computer. It has stereo audio I/O, 8x 16-bit analog inputs and 16 digital I/O.
The [Bela Mini starter kit](https://shop.bela.io/bela-mini-starter-kit-preorder) comes with the board pre-soldered to the PocketBeagle and an SD card, so that you can get started straight away.
If you choose the [Bela Mini cape](https://shop.bela.io/bela-mini-cape-preorder) and provide your own PocketBeagle, then the cape can be installed on the Pocket Beagle by inserting into upward-facing pin headers, or soldering directly to the board.

{% include single-image.html fileName="bela-mini-launch/blog_scale.jpg" %}

<div style="text-align: center; margin-bottom: 10px;"><a href="https://shop.bela.io/bela-mini" name="Preorder Bela Mini now"><button name="button" style="font-size: larger; font-weight: bold; cursor: pointer; color: #ffffff; padding: 10px; background-color: #00bea4; border-radius: 4px; border: 4px #00bea4;">Preorder now</button></a></div>

## Comparison of Bela Mini and the original Bela

| Feature                                	| Bela Mini | Bela |
| Audio Inputs | 2 | 2 |
| Audio Outputs | 2| 2 |
| 16-bit Analog inputs | 8 | 8 |
| 16-bit Analog outputs | - | 8 |
| Powered speaker outputs | - | 2|
| Digital I/O | 16 | 16 |
| UART serial | yes | yes |
| I2C bus | yes | yes |
| SPI bus | yes | yes(soft) |
| Ethernet | - | 1 |
| Dimensions | 56mm (l) x 35mm (w) x 21mm (h) | 87mm (l) x 54mm (w) x 27mm (h)

## Frequently asked questions

[When will Bela Mini be available?](#when-will-bela-mini-be-available)

[What are the dimensions of Bela Mini?](#what-are-the-dimensions-of-bela-mini)

[What are the differences between Bela and Bela Mini?](#what-are-the-differences-between-bela-and-bela-mini)

[Will a program written for Bela run on Bela Mini?](#will-a-program-written-for-bela-run-on-bela-mini)

[Are you still making and supporting the original Bela?](#are-you-still-making-and-supporting-the-original-bela)

[What does the USB port on the Bela Mini cape do?](#what-does-the-usb-port-on-the-bela-mini-cape-do)

[Can I use the Audio Expander or Multiplexer Capelets with Bela Mini?](#can-i-use-the-audio-expander-or-multiplexer-capelets-with-bela-mini)

[What is the difference in the SPI busses of Bela and Bela Mini?](#what-is-the-difference-in-the-spi-busses-of-bela-and-bela-mini)

[How do I attach the Bela Mini cape to the PocketBeagle?](#how-do-i-attach-the-bela-mini-cape-to-the-pocketbeagle)

[What is the correct orientation of the Bela Mini cape?](#what-is-the-correct-orientation-of-the-bela-mini-cape)

[What is the relationship between Bela and BeagleBoard.org?](#what-is-the-relationship-between-bela-and-beagleboardorg)

### When will Bela Mini be available?

Bela Mini is available for pre-order now. The design is finished and tested and production is underway. Barring any unforeseen delays, we expect Bela Mini orders to ship in May.


### What are the dimensions of Bela Mini?

Bela Mini is approximately 55mm long, 35mm wide and 21mm tall, counting both the Bela Mini cape and the PocketBeagle.


### What are the differences between Bela and Bela Mini?

Bela Mini keeps the most popular features of the original Bela in a package one third the size. To achieve the size reduction, Bela Mini keeps the stereo audio output but removes the 8 analog outputs, and Bela Mini does not have the onboard speaker amps (external speakers can still be used if they have their own amps). On the other hand, Bela Mini adds a bi-color indicator LED which is not on the original Bela.

Both Bela and Bela Mini have a 1GHz Cortex-A8 CPU and 512MB of RAM. The both have stereo audio I/O, 8x 16-bit analog inputs and 16 digital I/Os. They run the same software and support the same programming languages. Bela Mini requires an SD card to boot: it is based on the PocketBeagle which does not have the 4GB of eMMC found on the BeagleBone Black. An SD image for Bela Mini will be available on our [release page](https://github.com/BelaPlatform/bela-image-builder/releases) by shipping time.

### Will a program written for Bela run on Bela Mini?

Yes, the two boards are entirely compatible, though you will have to recompile the program when switching board. However, analog outputs are not available on Bela Mini, so if you are using them in your program, those signals will not be present on Bela Mini.

### Are you still making and supporting the original Bela?

Absolutely! We just refreshed our Bela stock, and we will continue to sell and support the Bela cape and Bela starter kit for the foreseeable future. You might want the original Bela to use the audio outs, speaker amps or the support for capelets.

### What does the USB port on the Bela Mini cape do?

This is a USB host port that you can use to connect USB devices such as MIDI controllers and WiFi dongles. It works the same way as the one on the BeagleBone Black. (Bela Mini is based on the PocketBeagle, which does not have a USB host port onboard, so the Bela Mini cape adds this.)

### Can I use the Audio Expander or Multiplexer Capelets with Bela Mini?

Probably not. The capelets are designed to fit the original Bela board and will not attach to the Bela Mini. If you are truly determined, you might be able to use the input portion of the Audio Expander Capelet with Bela Mini if you run wires for all the necessary signals (the output portion will not work as Bela Mini does not have the 8 analog outputs of the original Bela). The Multiplexer Capelet would need additional digital signals that are not currently available on the Bela Mini headers.

### What is the difference in the SPI busses of Bela and Bela Mini?

The Bela cape uses one shared SPI bus for the DC-coupled ADC and DAC and it uses I2S to communicate with the stereo audio codec. Although there is one extra SPI peripheral on the AM3358 chip, it uses the same pins as the I2S bus so they cannot be used simultaneously

On Bela Mini the SPI1 bus is entirely available (though it will use two of the pins normally used for Bela Digital I/O). 

However, for both platforms is possible to use the Linux `spi_gpio` driver, which allows to use any set of 4 GPIO pins as a fully-featured "soft" SPI device. This is slower (in the order of a few tens kHz) and the throughput of the bus will be affected by system load. An example use of this is on our code for the CTAG: [device-tree overlay](https://github.com/giuliomoro/Bela/blob/1651958f665d6e39fdcd5d293debeb4eae994f7c/resources/ctag/BELA-CTAG-00A0.dts) and [C++ code](https://github.com/giuliomoro/Bela/blob/1651958f665d6e39fdcd5d293debeb4eae994f7c/core/Spi_Codec.cpp) to use it.  Another alternative available on both platforms, which yields higher speed, is to use the unused PRU to bitbang the SPI protocol. An example of this is [here](https://github.com/giuliomoro/spi-pru). Adapting this code to your application will involve writing some PRU assembly code.

### How do I attach the Bela Mini cape to the PocketBeagle?

If you are buying a Bela Mini starter kit, then it’s already done for you! The starter kit comes pre-soldered and also includes a USB cable and pre-flashed SD card. If you buy a Bela Mini cape and source your own PocketBeagle, you will need to solder them together. You can either solder the Bela Mini cape directly on the PocketBeagle or solder two 18x2 socket headers to the top side of the PocketBeagle and then attach the cape.

If you plan to add sockets to the PocketBeagle, please note that the location of the holes on the PocketBeagle make it very difficult to fit most standard 18x2 headers around the CPU. For this reason, we recommend soldering the Bela Mini cape directly to the PocketBeagle. The cape will then give you sockets to connect further devices. Please see [this post](https://groups.google.com/forum/embed/?parenturl=http%3A%2F%2Fbeagleboard.org%2Fcape&showsearch=true&showtabs=true&place=forum%2Fbeagleboard&theme=default#!category-topic/beagleboard/pocketbeagle/Uxx_9ce2YHM) on the PocketBeagle forum for further discussion on attaching socket headers to the PocketBeagle.

### What is the correct orientation of the Bela Mini cape?

The Bela Mini cape goes on the top of the PocketBeagle, i.e. on top of the side where the connectors and components are located. As for rotation, the USB connector on the Bela Mini should be above the USB connector on the PocketBeagle, and the Molex-style connectors on the Bela Mini should be above the SD card slot on the PocketBeagle.

### What is the relationship between Bela and BeagleBoard.org?

[Bela](https://bela.io) and [BeagleBoard.org](https://beagleboard.org) are separate organisations based in different countries (the UK and the US, respectively), but we are both committed to open hardware and software, and we are active collaborators. Bela Mini is a hardware board which works with the PocketBeagle; it is BeagleBoard.org approved. We are working with them on software and community support to make the best possible user experience.

{% include single-image.html fileName="bela-mini-launch/beagle_approved.png" %}

