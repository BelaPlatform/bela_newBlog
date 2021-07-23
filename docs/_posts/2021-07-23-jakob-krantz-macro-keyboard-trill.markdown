---
layout: post
title: "Custom Designed Macro Keyboard with Trill"
date: 2021-07-23
categories:
  - "Hardware"
  - "Projects"
  - "Trill"
description: ""
image: macro-keyboard/header.jpg
author: bela
---

Custom keyboards can give a huge efficiency boost when working with complex programmes. In this post we look at a Macro keyboard created by Jakob Krantz which uses machine learning and our Trill sensors for gesture detection.

{% include youtube.html youtube="fY1d63aXOwc" %}

# Macros for everything

When working with dense and complex software like video editors, digital audio workstations or complex CAD programmes it can be useful to have dedicated physical controls for the commands which are used most often. This can massively speed up workflow and allow you to focus on the task in hand.

{% include single-image.html fileName="macro-keyboard/square-shot.jpg" %}

Jakob Krantz has created such a keyboard for a set of Macros which he uses most often when at his computer. Macros are a series of commands and instructions that are grouped together as a single command to accomplish a task automatically and at the click of an icon or push of a button.

{% include single-image.html fileName="macro-keyboard/keyboard-leds.jpg" %}



# Making control physical

The hardware of the keyboard features 6 Cherry-MX style key switches with built in RGB LEDs which are used in combination with a [Trill Bar](https://eu.shop.bela.io/collections/trill/products/trill-bar) and [Trill Square](https://eu.shop.bela.io/collections/trill/products/trill-square) capacitive touch sensor for capturing user interaction. There is also an OLED screen for displaying the status of the keyboard or other useful bits of information like the current value of Bitcoin.

{% include single-image.html fileName="macro-keyboard/cad.png" %}

This is all housed in a 3D printed enclosure. The sensors and screen are attached to [an ESP32 development board](https://www.espressif.com/) which acts as the brain and has built-in Bluetooth allowing the keyboard to be recognised as a standard HID keyboard.

{% include single-image.html fileName="macro-keyboard/back-of-macro-keyboard-2.jpg" %}


# Machine learning

With simple and direct mappings from the switches and Trill sensors to hotkeys on the computer, this would already be a very useful custom keyboard, but the real genius in this project is the use of machine learning to recognise the gestures on the Trill Square touchpad.

{% include youtube.html youtube="cg1-SUCJ2Vs" %}

The [Tensorflow Lite](https://www.tensorflow.org/) machine learning library is used to learn a set of different gestures on the keypad and associate that gesture with a macro. In order to reduce the amount of data passed to the machine learning algorithm Jakob decided to treat the gestures captured on Trill Square as if they had a reduced resolution of 28x28. In the above video you can see how a new gesture is recorded into the keyboard.

{% include single-image.html fileName="macro-keyboard/dark-led-keybaord.jpg" %}

This is a very flexible technique which could have wider applications for working with these kind of sensors. For full details on the project and to have a look at the code Jakob wrote visit the [project github](https://github.com/jakkra/Gesture-Detecting-Macro-Keyboard).

# About Jakob Krantz

Jakob Krantz is an Embedded SW Engineer mainly working with short range radio such as Bluetooth and WiFi. He spends a good deal of his spare time coding, 3D printing etc. Building things gives his great satisfaction. Check out his github here: [https://github.com/jakkra](https://github.com/jakkra).
