---
layout: post
title: "Bela’s New IDE: GUIs, Libraries and More"
date: 2019-10-09
categories:
- "Trill"
- "Projects"
- "Hardware"
- "Instruments"
- "Tutorials"
description: "Bela’s New IDE: GUIs, Libraries and More"
image: new-ide/header.jpg
author: bela
---

The core of the Bela platform is our browser-based Integrated Development Environment (IDE). The Bela IDE not only makes it intuitive and easy to create interactive projects with Bela, but also places the tools and resources for building interactive systems right at your fingertips.

{% include single-image.html fileName="new-ide/new-ide.gif" %}

We are thrilled to announce a major new version of the Bela IDE that’s [ready for download](https://github.com/BelaPlatform/Bela/wiki/Updating-to-the-new-IDE). Along with all the existing features for editing, building and managing projects, the IDE has gained several new features that expand these capabilities, including reusable code libraries and capabilities for creating browser-based GUIs for your Bela projects.

This post takes you through the basics of the Bela IDE and introduces the exciting new features. If you want to jump straight to updating your board to the new IDE, [click here](https://github.com/BelaPlatform/Bela/wiki/Updating-to-the-new-IDE).


# About the Bela IDE

Using a system like Bela used to be complicated and require a complex system of software tools. When we started Bela we wanted to provide everything necessary for editing, compiling and running code on Bela, with the goal of making creating projects with sensors and sound as intuitive and convenient for as many makers as possible.

{% include youtube.html youtube="WnxSIwjUdqw" %}

To make this IDE easily accessible, we made it entirely browser-based. Accessing the Bela IDE requires only plugging in your Bela and navigating to [bela.local](http://bela.local/), thereby removing the need for complicated toolchains and even an internet connection. The entire IDE is served locally from your Bela board.

There are several core features of the IDE:

- **A text editor for writing code.** Code in C++, Supercollider or Csound and view Pure Data patches, right in the browser. The IDE saves your work and checks your syntax as you type.

- **A console window and terminal prompt.** Interact with your Bela system and get live feedback like you’re using the command line, without ever leaving the IDE.

- **A toolbar for compiling and running projects.** Compile code, run your projects, monitor the system and stop programs from a conveniently-located toolbar.

- **An extensive example library.** Bela ships with over one hundred examples in various languages to help you get started with your projects and to give you inspiration.

- **A tab-based navigation system.** IDEs tend to be information-heavy and overwhelming, and a huge array of features can distract from the important job of coding. We organised the file system, settings, documentation and more into a file menu that gives you access to all features and makes sense, and also folds away when you don’t need it.

- **Interactive pin diagrams.** We were always annoyed by having to keep a pin map in another window or on a piece of paper to locate pins while setting up hardware, so we created an interactive pin diagram that makes understanding available pins as easy as mousing over them.

- **A fully-functional oscilloscope.** We know how essential an oscilloscope is to visualising signals and understand what a system is doing. Oscilloscopes are also expensive, heavy, and complicated to set up. To make seeing signals easy we built one right into the IDE.


# Bela IDE 1.0: New features

With this new update we have added some exciting new features that make the Bela IDE more useful than ever before. We started with a sleek new design to make the IDE more integrated, cohesive, and organised. Then, we added two important new features:

- **Graphical User Interfaces (GUI) integration.** You can now create GUIs as part of your project which can be used to control the code running on the board and visualise any signals or data from your project.

{% include single-image.html fileName="new-ide/gui.gif" %}

- **Library support** to make code sharing easier plus a whole host of exciting libraries for you to try out including synthesis methods, utilities and code for interacting with custom sensors.

{% include single-image.html fileName="new-ide/libraries.png" %}


# Graphical User Interfaces

Over the past couple of years we have had many requests from our users for GUIs to be integrated into the Bela workflow in order to add custom visualisations and complex controllers. Now the wait is over!

## How the GUI Works

The GUI functionality works with [p5.js](https://p5js.org/) which is one of our favourite open-source languages for visual programming. p5.js is a JavaScript library for creative coding which focuses on making coding accessible and inclusive for artists, designers, educators, aligning perfectly with our aims at Bela. It’s easy to get started with p5.js and it will be familiar to many coders as it is an interpretation of [Processing](https://processing.org/) for today’s web.

{% include youtube.html youtube="kBFNnON0Hoo" %}

To use a GUI in your project, add an additional file called `sketch.js`. This file contains the code for your GUI. As usual, you can write and edit the code within the IDE, then click the "GUI" button in the lower toolbar to open your GUI sketch in a new browser tab. The p5.js code that you create has to be written in [instance mode](https://github.com/processing/p5.js/wiki/Global-and-instance-mode).

We have created simple methods for passing data between your Bela project and the GUI sketch. You can visualise data from your Bela project or interact with it from the browser, for example using the mouse or keyboard to control your code. There are several examples to get started. Even while you use the browser to interact, your Bela project is still running in [Bela’s high-performance real-time, low-latency environment](https://bela.io/about).


## Technical Details
------

### Sending to the GUI:

Sending data from your `render.cpp` file to the GUI is as simple as using `sendBuffer(0, data)`, where the first parameter is the index assigned to the buffer and the second parameter is the data you want to send over. This data can be a single value, array, or vector. The GUI library takes care of sending this data from `render.cpp` to `sketch.js` via a web socket. Within `sketch.js` the data can then be accessed via `Bela.data.buffers`.

------

### Receiving data from the GUI:

Receiving data from `sketch.js` in `render.cpp` is very similar except that we have to predefine the type and number of elements in the buffer.
To do so we use `setBuffer('f', 2)` in `setup()` of our `sketch.js` file. The first parameter indicates the type of the buffer ('f': float, 'd': int, 'c': char) while the second one refers to the number of elements to be expected.

To send the data from `sketch.js` we use  `Bela.data.sendBuffer(0, 'float', buffer)`, where the first argument is the index of the buffer, the second is the type, and the third is the data to exchange. Data is then exchanged via a web socket. This buffer can be accessed in `render.cpp` by using the following function: `getDataBuffer(0)`, part of the GUI library, which obtains a DataBuffer a given index (0 in this case). The new data available on the buffer can be retrieved in its correct form using `float* data = buffer.getAsFloat();`.

-----

# Libraries

Libraries are reusable blocks of code which you can easily include in your projects, without having to copy all the files into each project. This new IDE allows you to choose from a variety of built-in libraries which take care of things like communicating with sensors (for example, our new [Trill capacitive touch sensors](https://www.kickstarter.com/projects/423153472/trill-touch-sensing-for-makers)), audio synthesis routines, and communication protocols like websockets, MIDI and OSC.

{% include youtube.html youtube="b3_tXtx-mGE" %}

Functionality for community contributed libraries will be coming soon. In the meantime, if you have library ideas, [send us an email](mailto:info@bela.io)!

Each library comes with a set of examples and some usage information. To add it to your C++ project, click the "Use this library" button and paste the resulting code into your project.

# Try Out the New IDE

The new IDE will soon be shipping with every Bela board. You can update your existing Bela board by following the instructions at the below link:

<div style="text-align: center; margin-bottom: 10px;"><a href="https://github.com/BelaPlatform/Bela/wiki/Updating-to-the-new-IDE" name="Try the New IDE"><button name="button" style="font-size: larger; font-weight: bold; cursor: pointer; color: #ffffff; padding: 30px; background-color: #00bea4; border-radius: 15px; border: 4px #00bea4;">Try the New IDE</button></a></div>


# Visualising Trill Sensors in the Bela IDE

As the above videos show, the Trill sensors are the perfect counterpart for Bela. The Trill touch sensors are now [live on Kickstarter](https://www.kickstarter.com/projects/423153472/trill-touch-sensing-for-makers)! This new family of sensors from Bela bring precise and easy-to-use touch interaction to your digital projects.

{% include youtube.html youtube="xzaf2bBKuQI" %}

<div style="text-align: center; margin-bottom: 10px;"><a href="https://www.kickstarter.com/projects/423153472/trill-touch-sensing-for-makers" name="Trill on Kickstarter"><button name="button" style="font-size: larger; font-weight: bold; cursor: pointer; color: #ffffff; padding: 30px; background-color: #00bea4; border-radius: 15px; border: 4px #00bea4;">See our Rewards on Kickstarter</button></a></div>

The campaign runs until 5pm 18th October so don't miss your chance to get your hands on this new family of touch sensors for makers. See you on Kickstarter and stay tuned for updates!
