Build boilerplate
=================

First, we must set up our build boilerplate. For this we will be using the GNU
compiler (``gcc``) and ``make`` to script our build process.

Makefile
--------

:download:`Download Makefile <files/Makefile>`

.. literalinclude:: files/Makefile
   :language: make
   :linenos:

Let's break that down so it's clear what is going on:

.. literalinclude:: files/Makefile
    :language: make
    :lines: 1-4

The first two lines above specify the compiler we want to use for C and
assembly. The last two are the flags to pass to the
compiler---``$(CFLAGS)``---and the linker---``$(LDFLAGS)``:

Compiler flags:

* ``-m32``: specifies the architecture of the resulting object files should be 32-bit (only required if your computer is 64-bit)
* ``-Wall`` and ``-Wextra``: turn on extra warnings while compiling
* ``-ffreestanding``: specifies there is no hosted environment and that the standard library should not be included
* ``-std=gnu99``: use C99 extensions

Linker flags:

* ``-T linker.ld``: the path to the linker script, which we will create next
* ``-nostdlib``: don't link with ``libc``
* ``-lgcc``: link with ``libgcc`` (this provides some cool things which we'll talk about later)
* ``-Wl,--build-id=none``: disable a warning about some meta information the linker tries (and fails) to add to the binary

.. literalinclude:: files/Makefile
    :language: make
    :lines: 6,7

The above two lines specify the names of the kernel binary and object files
that we will add when we start writing our kernel.

The rest of the ``Makefile`` specify rules about how to make parts of the
kernel. If it isn't obvious to you how it works, have a look at some tutorials
on Makefile rules as it's outside the scope of this book.

.. literalinclude:: files/linker.ld
   :language: 

linker.ld: the linker script
----------------------------

:download:`Download linker.ld <files/linker.ld>`

.. literalinclude:: files/linker.ld
   :linenos:
