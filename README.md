Sam's OSDev book
================

To build the book, Sphinx 1.3+ is required.

```bash
$ pip install 'sphinx>=1.3'
$ make -C book singlehtml
$ $BROWSER book/build/singlehtml/index.html
```

There are more targets available in the `Makefile`:

```
Please use `make <target>' where <target> is one of
  singlehtml to make a single large HTML file
  epub       to make an epub
  latexpdf   to make LaTeX files and run them through pdflatex
  linkcheck  to check all external links for integrity
  serve      to build a single large HTML file and serve it at http://localhost:8000/
```
