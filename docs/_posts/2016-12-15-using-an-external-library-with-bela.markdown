---
layout: post
title: "Using an external library within a Bela project"
date: 2016-12-15
categories:
  - Software
  - Tutorials
description: "How to access the functionalities of an external library from within your Bela project."
image: external-libraries.png
author: giulio
---

Bela is a full-fledged Linux computer and a Bela program is no different from a standard Linux program so in principle you can access any library that is available on Linux from within your Bela project.
In this tutorial we will see two examples of how that can be done.

While you can use standard Linux libraries with Bela, you should be careful about using calls to these libraries from within your Bela audio code.
As a general rule, you should not use in the audio callback functions that have an unbound execution time, for instance algorithms that do not have a constant complexity, that may perform system calls or memory reallocation. [Here](http://www.rossbencina.com/code/real-time-audio-programming-101-time-waits-for-nothing) is a more exhaustive list of things you should NOT do in the audio thread.

NOTE: some of the steps below will require your BeagleBone to be connected to the internet. The most straightforward way to do so is connecting it via the ethernet cable to a home router. Other options involve [wifi dongles](https://github.com/BelaPlatform/Bela/wiki/Connecting-Bela-to-wifi), or sharing your computer's connection over the USB cable. The latter is very much depending on your host operating system, so just [google it](https://www.google.com/?q=share+wifi+over+ethernet).

## What is a library?

The internet is full of answers to this question, we very briefly review here some basic concepts.

> "a library is a collection of non-volatile resources used by computer programs" 
> 
> [Wikipedia](https://en.wikipedia.org/wiki/Library_(computing\))

Practically speaking, a library may contain a toolkit for a specific task, for instance to read and write sound files, or to access web pages, or to perform machine learning tasks.
Libraries are usually composed of one or more header files and one or more pre-compiled binary files.
The header files are used by your `.c` or `.cpp` files to know about the existance of classes, methods, functions, variables, so that they compile correctly.
The actual pre-compiled binaries that make up the library are only needed at linking time, so that the linker can find the symbols.

## How to use a library on Bela

Bela runs Debian (a distribution of Linux), which comes with, `apt`, a command-line package manager which can be used to install a large selection of pre-compiled libraries.
If your library is available for Debian throught `apt`, installing it will require a few easy steps. Note that you will need to be connected to the internet and run `apt-get update` before you go through the following steps.

### Find it

You need to find the name of the package that contains the library. A good guess, which works most of the time is `libLIBRARYNAME-dev`. Alternatively, you can google for "LIBRARYNAME debian". A more "scientific" approach to this is to use `apt`'s own search tool:

```
apt-search LIBRARYNAME
```
(may take a while), then choose from the list of packages that it returns the one that is most suitable.

### Install it

Once you find out the package name, you can install it with:

```
apt-get install PACKAGENAME
```

If the library is *not* available through `apt`, and the libary maintainer does not provide a binary compiled for ARM Linux hard-float, then you may have to compile the library from source yourself. The maintainer will then have to provide a set of step-by-step instructions on how to build the library and a list of the dependencies. If you are lucky, you can probably install the dependencies through `apt-get`, otherwise you may have to build (some of) them manually.

### Use it 

By now you should have your library on the system and you want to use it in your project.

#### Include it

You will have one or more source files that need to know about the library's API in order to be able to use it. For instance, the compiler needs to know that a function or a global variable is defined somewhere else, otherwise it will complain. If you use classes or structures defined in the library, the compiler needs to know how much space to allocate for these every time you create a variable of that type, and also it needs to know what methods the class has.
In order to do this, you would use the `#include` preprocessor directive at the top of any source file that needs to know about the library. Again, the library documentation should tell you what files should be included, as possibly there are distinct header files for distinct parts of the library. A good starting guess is

```
#include <LIBRARYNAME.h>
```
but - again - you should check the documentation if this does not work as expected.
The angled brackets (`<...>`) notation used for `#include` means that the compiler will look for a file with that name in the include search folders. By default, these typically include `/usr/local/include` and `/usr/include`. Any library installed via `apt-get` should add their header files to those same folders and so it should work out of the box.

#### Link it

The last stage of the build process is the "linking", where the linker collects all the intermediate object files generated by compiling each individual source file, resolves external symbols (including your library's!) and produces your executable binary output file.
You must tell the linker you want to use the library, so that it knows it should look into it for any unresolved symbols.
In order to do so, you need to pass to the linker options in the format `-lLIBRARYNAME`. Check the documentation for your library, as there may be more than one `-l` flag that needs to be added for the specific library in use.

From the Bela IDE you can pass options to the linker using the "Makefile options" box. You can type in it:

```
LDLIBS=-lLIBRARYNAME;
```

In case you need to add multiple libraries, put them all between the `=` sign and the `;`, leaving a space between them, such as:

```
LDLIBS=-lLIBRARYNAME -lANOTHERLIB -lYETANOTHER
```

# TODOs:

## A practical example

## Advanced: compile a library from sources

## Advanced: custom paths

