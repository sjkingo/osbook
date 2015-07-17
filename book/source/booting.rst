Booting and Getting to C
========================

First, we must do stuff, such as testing out Pygments:

.. code-block:: c

    #include <foop.h>

    int do_stuff(void) {
        int a = do_more_stuff();
        return a**2;
    }

But before we do that, here's some assembly:

.. code-block:: gas

    go:
        mov 0xdeadbeef, %ebx
        push %ebx
        jmp stop
    stop:
        jmp $

And you can build it like so (this time, without Pygments)::

    $ gcc -o gogo.o -c go.S
