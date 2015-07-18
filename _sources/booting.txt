Booting and Getting to C
========================

Unlike writing a userland program in C, there is a not-so-insignificant amount
of work we must do first to be able to compile and boot our operating system. In
userland, most of this heavy lifting is performed for us by the compiler and linker,
so we can simply write C and have it run.

When writing our own operating system, none of this support exists! Writing it ourselves
isn't especially difficult.

