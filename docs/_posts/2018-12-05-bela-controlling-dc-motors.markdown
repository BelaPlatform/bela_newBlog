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

Motors are current hunger components and many motors will require more current than the Bela board can supply through its pins by default (limited to 250mA). With the small DC motors that are shown above and that are common to find in robotics or Arduino starter kits it is possible for the board to provide enough current to control the motor. Below there are three approaches to controlling motors with Bela, each with their own circuit diagram and explanation.

## A note of warning before we proceed

There a few important things to note when working with motors and Bela:

- When controlling motors or solenoids a flyback diode in the circuit is essential to protect the board from voltage spikes.
- No voltage higher than 3.3V should go into the Bela digital I/O. Failing to do so can make the your Bela board unusable.

# Components

- DC motor
- NPN transistor or MOSFET, with high enough collector current (anything in a TO-220 package will most likely do, but check the datasheet!)
- Diodes (e.g.: 1n4007)
- 2.2K Ohm Resistor


### Using a transistor to amplify the current

Motors, solenoids and other types of actuators generally require a large current to work. The digital pins on the Bela board only can supply a maximum of 6mA, so they are not suitable to drive a motor directly. We therefore need to include a transistor or a mosfet in our circuit that acts like a current amplifier. This way, a small current, provided by Bela's digital pin, going through the transistor base can be used to control a large current through the collector of the transistor and the motor.

### Flyback diode

When a motor stops spinning it is possible that it creates a reverse current because of its momentum. If this happens, the reverse current generated (known as flyback) will try and find the most direct route to ground. This route could be back towards the Bela board which we don't want to happen and so we need to put a protection diode in place to block the current from reaching the pins of the Bela board.

TODO: you don't actually need the 3.3V supply in any of the diagrams

TODO: remove useless GND connections from the diagram: no need to jumper the two GND from the power rails: just get a GND wire from the power rail on the right hand side to the base of the transistor.

TODO: all diagrams should use digital outs

TODO: mention that the transistor is used as a switch. Possibly introduce PWM before showing any diagram, and only put code in "The code"

TODO: in the code, it'd be good to add an explanation as to how a `[phasor~]` into an `[expr~]` does a PWM. The example that is currently there is more advance than it should be for a beginner. Start with something with a constant PWM, like:
```
[phasor~ 2000]
|
[expr~ $v1 > 0.5]
```
 then move over to more complex stuff. It may be worth mentioning how you do it in C++, as well.

TODO: add "real" schematic next to the Fritzing. On the Fritzing, label base, emitter, collector. Different transistors may have different pinouts.

TODO: mention one or more transistors that have been tested, mention mosfets as an alternative, and that you should be looking out for the maximum collector current, and maximum C-E voltage.

TODO: add two 1n4007 diodes in series from the base to ground. If the voltage there ever gets higher than 1.4V (e.g.: because of a failed transistor), the diodes will short the power supply to ground, saving the Bela board.

# Powering motors from the onboard supply

{% include single-image.html fileName="motors/DC Motor_PINS.png" %}

In this case we are powering the motors from the 5V supply that comes straight from the Beaglebone. This can be found on headers `P9_07` and `P9_08`. With the above circuit you will be able to run the small hobbyist DC motors. The resistor in series with the Bela digital output pin serves to limit the current that the transitor receives at its base. There needs to be enough current going through to turn on the transistor. 

# Powering motors from the barrel jack supply

{% include single-image.html fileName="motors/Motors-barrel.jpeg" %}

A better solution that runs less risk of resetting the board is to power the board via the barrel jack. This should be done with a 5V regulated supply. We commonly use [barrel jack to USB connectors]() which we plug into the 5V rated plugs that are used for phone chargers.

The only difference between this circuit and the one before is that the 5V supply in now coming from pins `P9_05` or `P9_06`. This 5V supply comes from the barrel jack and so you will be able to draw more current from here without worrying about the board powering off.

# Powering motors from an external power supply

{% include single-image.html fileName="motors/Motors-external.jpeg" %}

The third and most robust strategy for driving motors with Bela is to use an external power supply at the collector of the transistor that is controlled by the Bela pin at its base. This power supply can in principle be any DC voltage, meaning that you can use this configuration with many different types and sizes of DC motors. Because the external voltage does not connect to the Bela directly, but is switched on and off by the transistor, it is safe to use supply voltages higher than 5V. The ground of the power supply will need to be connected with the ground of Bela at the emitter of the transistor.

# The code

The best way to drive motors is using Pulse Width Modulation (PWM) which is a technique of switching the pin of the motor controller on and off at a certain frequency and with a set duty cycle (proportion of on time to the overall period) to simulate a true analog voltage. This signal is a pulse wave where the width of the pulse is adjustable. If the frequency of the PWM signal is within a suitable range (e.g.: around 1000Hz - 5000Hz), then the motor effectively sees the PWM input as if it was an analog signal of voltage proportional to the duty cycle. So, with a PWM signal oscillating between 0 and 5V, a duty cycle of 50% will be equivalent to a 2.5V analog signal, 25% as 1.25V, 75% as 3.75V etc. The main advantage of using a PWM signal instead of an analog one is that the transistor driving the motor is much more efficient when it spends most of the time in the full ON or full OFF state, than if it were to be in an intermediate state, therefore dissipating fewer heat. Additionally, it's often much easier to switch a pin from high to low than it is to output a true analog voltage. Bela is actually capable of generating a true analog voltage, using the on-board DAC, but most other devices are not.
In these examples we are using PWM because it's the most common technique to drive DC motors in automation and robotics.
You can download a code example in PD [here](add-link).

TODO: is the above PWM frequency range a good one?

{% include single-image.html fileName="motors/code.png" %}


For some project inspiration have a look at [making a one handed bass with Bela](https://blog.bela.io/2016/02/01/making-the-one-handed-bass-with-bela/) and [Axis: a kinetic sculpture made with Bela](https://blog.bela.io/2017/02/27/axis/).
