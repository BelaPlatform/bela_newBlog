---
layout: post
title: "Bela’s New IDE: GUIs, Libraries and More"
date: 2019-10-07
categories:
- "Trill"
- "Projects"
- "Hardware"
- "Instruments"
- "Synths"
description: "Bela’s New IDE: GUIs, Libraries and More"
image: new-ide/header.JPG
author: bela
hidden: true
---

The core of the Bela platform is our browser-based Integrated Development Environment (IDE). The Bela IDE not only makes it intuitive and easy to create interactive projects with Bela, but also places the tools and resources for building interactive systems right at your fingertips.

{% include single-image.html fileName="new-ide/new-ide.png" %}

Today we are thrilled to announce a new version of the Bela IDE that’s [ready for download](link). Along with all the existing features for managing files and folders, compiling code, debugging projects and interacting with Bela, the IDE now has new features that expand these capabilities, such as code libraries and capabilities for creating GUIs for your Bela projects.

In this post we review the IDE workflow, and introduce you to the new exciting features.

# About the Bela IDE

Using a system like Bela used to be complicated and require a complex system of software tools. When we started Bela we wanted to provide everything necessary for editing, compiling and running code on Bela, with the goal of making creating projects with sensors and sound as intuitive and convenient for as many makers as possible.

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

- **Library support** to make code sharing easier plus a whole host of exciting libraries for you to try out including synthesis methods, utilities and code for interacting with custom sensors.

# Graphical User Interfaces

Over the past couple of years we have had many requests from our users for GUIs to be integrated into the Bela workflow in order to add custom visualisations and complex controllers. Now the wait is over!

## How the GUI Works

The GUI functionality works with p5.js which is one of our favourite open-source languages for visual programming. p5.js is a JavaScript library for creative coding which focuses on making coding accessible and inclusive for artists, designers, educators, aligning perfectly with our aims at Bela. It’s very easy to get started with p5.js and it may be familiar to many coders as it is an interpretation of Processing for today’s web.

The integration of p5.js with our IDE is simple. In your project you will now have an additional file called sketch.js which is where you code your GUI. To view this file it is as simple as pressing the GUI button on the main menu which will open your sketch in a new tab.

We have various methods for passing data from your Bela project to your sketch for visualisation that are explained in the examples. Equally we have methods for sending data from your sketch, for example the x-y position the mouse on the screen, mouse-clicks, keypresses and all other sorts of interactions back to Bela code allowing you to create control interfaces for your projects.

## Visualising Signals with the Bela GUI

{% include single-image.html fileName="new-ide/visualise-1.png" %}

{% include single-image.html fileName="new-ide/visualise-2.png" %}

## Creating Custom Control Interfaces with the Bela GUI

{% include single-image.html fileName="new-ide/mouse-track.png" %}

# Libraries

You can now easily add libraries to your Bela project from the new libraries tab. We ship Bela with a handful of useful libraries that take care of things such as communicating with sensors like our new Trill capacitive touch sensors, basic audio synthesis such as ADSR and filters, and communication protocols like websockets, MIDI and OSC.

To add a library to your c++ project copy and paste the generated code at the top. Functionality for community contributed libraries will be coming soon.

# Try Out the New IDE

The new IDE will shortly be shipping with every Bela board but if you already have a board and would like to update then just follow these instructions:

<div style="text-align: center; margin-bottom: 10px;"><a href="https://www.kickstarter.com/projects/423153472/trill-touch-sensing-for-makers" name="Try the New IDE"><button name="button" style="font-size: larger; font-weight: bold; cursor: pointer; color: #ffffff; padding: 30px; background-color: #00bea4; border-radius: 15px; border: 4px #00bea4;">Try the New IDE</button></a></div>


# Visualising Trill Sensors in the Bela IDE

The Trill touch sensors are now [live on Kickstarter](https://www.kickstarter.com/projects/423153472/trill-touch-sensing-for-makers)! This new family of sensors from Bela bring precise and easy-to-use touch interaction to your digital projects.

{% include youtube.html youtube="xzaf2bBKuQI" %}

<div style="text-align: center; margin-bottom: 10px;"><a href="https://www.kickstarter.com/projects/423153472/trill-touch-sensing-for-makers" name="Trill on Kickstarter"><button name="button" style="font-size: larger; font-weight: bold; cursor: pointer; color: #ffffff; padding: 30px; background-color: #00bea4; border-radius: 15px; border: 4px #00bea4;">See our Rewards on Kickstarter</button></a></div>

The campaign runs until 5pm 18th October so don't miss your chance to get your hands on this new family of touch sensors for makers. See you on Kickstarter and stay tuned for updates!
