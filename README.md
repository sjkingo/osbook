# Sam's OSDev book

This book has been written to be a practical guide on developing operating
systems, and specifially, for Intel's x86-architecture. The end result of
working through this book will be a bootable kernel that you can expand upon.

The book is available at http://sjkingo.github.io/osbook/

## Building the book

To build the book into HTML or PDF, Sphinx 1.3+ is required.

```bash
$ pip install 'sphinx>=1.3'
$ make -C book html
$ $BROWSER book/build/html/index.html
```

There are more targets available in the `Makefile`:

```
Please use `make <target>' where <target> is one of
  html       to make a HTML site
  epub       to make an epub
  latexpdf   to make LaTeX files and run them through pdflatex
  linkcheck  to check all external links for integrity
  serve      to build a HTML site and serve it at http://localhost:8000/
  publish    publish the build to git
  rebuild    use inotifywait(1) to watch and rebuild the source when it changes
```
