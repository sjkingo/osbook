Introduction
============

This book has been written to be a practical guide on developing operating
systems, and specifially, for Intel's x86-architecture. It assumes you already
have a working knowledge of the internals of an operating system and will
attempt to guide you along to implement that knowledge into a small bootable
kernel.

Some theory will be presented where appropriate and in topics that are of
particular interest to the author.

Required knowledge
------------------

You will need a strong knowledge of C, an ability to understand the syntax of
assembly (though you won't need to write much), and a general theory of how
operating systems work -- this book will tell you how they're put together.

Terminology
-----------

* *operating system*: a complete software package including both a kernel and a
  userland implementation
* *kernel*: the core piece of software that interfaces software with hardware --
  **this book focuses on this**
* *userland*: a collection of programs, libraries and scripts that the user uses
  to interface with a kernel

How this book was written
-------------------------

The book is written in reStructuredText and generated using `Sphinx`_, using a
`custom theme`_. `The source`_ is available --- patches welcome!

.. _Sphinx: http://sphinx-doc.org/
.. _custom theme: https://github.com/sjkingo/osbook/tree/master/book/minimal_theme
.. _The source: https://github.com/sjkingo/osbook
