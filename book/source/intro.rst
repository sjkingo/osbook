Introduction
============

This book has been written to be a practical guide on developing operating
systems, and specifially, for Intel's x86-architecture. It assumes you already
have a working knowledge of the internals of an operating system and will
attempt to guide you along to implement that knowledge. The end result of this
book will be a bootable kernel that you can expand upon.

Some theory will be presented where appropriate and in topics that are of
particular interest to the author.

Required knowledge
------------------

You will need a strong knowledge of C, an ability to understand the syntax of
assembly (though you won't need to write much), and a general theory of how
operating systems work -- this book will tell you how they're put together.

Terminology
-----------

kernel
    the core piece of software that interfaces software with hardware

monolithic kernel
    a type of kernel that implements all of its functions in one large binary
    (as opposed to a *micro*-kernel that makes a separation between core kernel
    and device drivers)

Multiboot:
    an open standard describing how a boot loader can load an x86 kernel [#multiboot]_

operating system
    a complete software package including both a kernel and a userland implementation

userland
    a collection of programs, libraries and scripts that the user uses to interface with a kernel

.. rubric::

.. [#multiboot] `Multiboot Specification v0.6.96`_

.. _Multiboot Specification v0.6.96: https://www.gnu.org/software/grub/manual/multiboot/multiboot.html

The kernel
----------

The kernel you will write while reading this book will be a small x86
monolithic kernel, and by the end contain the following features:

* Multiboot compatible
