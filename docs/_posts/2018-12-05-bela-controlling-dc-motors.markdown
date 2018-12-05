---
layout: post
title: "Controlling DC Motors with Bela"
date: 2019-11-24
categories:
  - "Hardware"
  - "Instruments"
  - "Projects"
description: "Controlling DC Motors with Bela"
image: motors/header.jpg
author: bela
---

In this post we discuss controlling motors and other actuators with Bela. We'll cover the best practices, circuits and code for making things move.

# DC Motors and Bela

Small low-voltage DC motors (Direct-Current motors) like the ones below are common components that are used in all sorts of different hobbyist electronics projects. These are the simplest type of motors you can get: when a current is applied to the terminals of the motor it will spin, reversing power and ground on the terminals will make it spin in the other direction.

{% include single-image.html fileName="motors/dc-motors.jpg" %}

Motors are current hunger components and many motors will require more current than the Bela board can supply through its pins by default (limited to ..mA). With the small DC motors that are shown above and that are common to find in robotics or Arduino starter kits it is possible for the board to provide enough current to control the motor. Below there are three approaches to controlling motors with Bela, each with their own circuit diagram and explanation.

## A note of warning before we proceed

There a few important things to note when working with motors and Bela:

- When controlling motors or solenoids a flyback diode in the circuit is essential to protect the board from voltage spikes.
- No voltage higher than 3.3V should go into the digital I/O. Failing to do so can make the BeagleBone unusable.
- No voltage higher than 5V should go into the analog inputs. Failing to do so will at least make the analog inputs unusable, or perhaps do something worse.

# Components

- DC motor
- NPN transistor (or MOSFET?)
- Diode
- 2.2K Ohm Resistor


### Using a transistor to amplify the current

Motors, solenoids and other types of actuators generally require a large current to work. The pins on the Bela board only can supply a maximum of (..mA) so we need to include a transistor in our circuit that acts like a current amplifier. With transistors a small base current can be used to control a large collector current.

### Flyback diode

When a motor stops spinning it is possible that it creates a reverse current beacuse of its momentum. If this happens the reverse current generated (known as flyback) will try and find the most direct route to ground. This route could be back towards the Bela board which we don't want to happen and so we can put a protection diode in place to block the current from reaching the pins of the Bela board.

# Powering motors from the onboard supply

{% include single-image.html fileName="motors/DC Motor_PINS.png" %}

In this case we are powering the motors from the 5V supply that comes straight from the Beaglebone. This can be found on headers `P9_07` and `P9_08`. With the above circuit you will be able to run the small hobbyist DC motors. The resistor in series with the Bela Analog output pin serves to limit the current that the transitor receives at its base: changing this resistor to a lower value will result in the motor spinning faster but with the risk that the motor will pull too much current and shut down the board or stop communication between your laptop and the Bela IDE.

# Powering motors from the barrel jack supply

{% include single-image.html fileName="motors/Motors-barrel.jpeg" %}

A better solution that runs less risk of resetting the board is to power the board via the barrel jack. This should be done with a 5V regulated supply. We commonly use [barrel jack to USB connectors]() which we plug into the 5V rated plugs that are used for phone chargers.

The only difference between this circuit and the one before is that the 5V supply in now coming from pins `P9_05` or `P9_06`. This 5V supply comes from the barrel jack and so you will be able to draw more current from here without worrying about the board powering off.

# Powering motors from an external power supply

{% include single-image.html fileName="motors/Motors-external.jpeg" %}

The third and most rebust strategy for driving motors with Bela is to use an external power supply that is switched on and off by the transistor that is controlled the Bela pin at its base. This means you can use many different types and sizes of DC motor. The ground of the power supply will need to shared with the ground of Bela.

# The code

The best way to drive motors is using Pulse Width Modulation (PWM) which is a technique of switching the pin of a microcontroller on and off at a certain frequency and with a set duty cycle (proportion of on time to off time) to simulate an true analog voltage. This signal is like a square wave where the width of the pulse is adjustable. The motor averages the PWM signal treating a PWM with a duty cycle of 50% as 2.5V, 25% as 1.25V, 75% as 3.75V etc. You can download a code example in PD [here](add-link).

{% include single-image.html fileName="motors/code.png" %}

This is a much more efficient way of driving a motor in comparison to direct analog voltage output for a number of reasons. Firstly it's much easier to switch the pin of a microcontroller from high to low than it is to hold an analog voltage. It also makes it easier to scale projects up to work with external power supplies and avoids power loses through heat in the transistor.

For some project inspiration have a look at [making a one handed bass with Bela](https://blog.bela.io/2017/02/01/making-the-one-handed-bass-with-bela/) and [Axis: a kinetic sculpture made with Bela](https://blog.bela.io/2017/02/27/axis/).
