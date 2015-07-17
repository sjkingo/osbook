# Makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build-3
PAPER         = a4
BUILDDIR      = build
COPYDIR	      = /home/sam/osbook_gh-pages

# User-friendly check for sphinx-build
ifeq ($(shell which $(SPHINXBUILD) >/dev/null 2>&1; echo $$?), 1)
$(error The '$(SPHINXBUILD)' command was not found. Make sure you have Sphinx installed, then set the SPHINXBUILD environment variable to point to the full path of the '$(SPHINXBUILD)' executable. Alternatively you can add the directory with the executable to your PATH. If you don't have Sphinx installed, grab it from http://sphinx-doc.org/)
endif

# Internal variables.
PAPEROPT_a4     = -D latex_paper_size=a4
PAPEROPT_letter = -D latex_paper_size=letter
ALLSPHINXOPTS   = -d $(BUILDDIR)/doctrees $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) source
# the i18n builder cannot share the environment and doctrees with the others
I18NSPHINXOPTS  = $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) source

.PHONY: help clean singlehtml epub latexpdf linkcheck serve publish rebuild

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  singlehtml to make a single large HTML file"
	@echo "  epub       to make an epub"
	@echo "  latexpdf   to make LaTeX files and run them through pdflatex"
	@echo "  linkcheck  to check all external links for integrity"
	@echo "  serve      to build a single large HTML file and serve it at http://localhost:8000/"
	@echo "  publish    publish the build to git"
	@echo "  rebuild    use inotifywait(1) to watch and rebuild the source when it changes"

clean:
	rm -rf $(BUILDDIR)/*

singlehtml:
	$(SPHINXBUILD) -b singlehtml $(ALLSPHINXOPTS) $(BUILDDIR)/singlehtml
	@echo
	@echo "Build finished. The HTML page is in $(BUILDDIR)/singlehtml."
	touch $(BUILDDIR)/singlehtml/.nojekyll

epub:
	$(SPHINXBUILD) -b epub $(ALLSPHINXOPTS) $(BUILDDIR)/epub
	@echo
	@echo "Build finished. The epub file is in $(BUILDDIR)/epub."

latexpdf:
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) $(BUILDDIR)/latex
	@echo "Running LaTeX files through pdflatex..."
	$(MAKE) -C $(BUILDDIR)/latex all-pdf
	@echo "pdflatex finished; the PDF files are in $(BUILDDIR)/latex."

linkcheck:
	$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) $(BUILDDIR)/linkcheck
	@echo
	@echo "Link check complete; look for any errors in the above output " \
	      "or in $(BUILDDIR)/linkcheck/output.txt."

serve: clean singlehtml
	(cd $(BUILDDIR)/singlehtml &&	python3 -m http.server)

publish: singlehtml
	rsync -av --delete --exclude '.git' $(BUILDDIR)/singlehtml/ $(COPYDIR)/
	(cd $(COPYDIR) && git commit -a -m "Updated build of book" && git push)

rebuild: singlehtml
	while inotifywait -q -e modify -e create -e delete -r --exclude '\.(sw?)' source minimal_theme ; do make singlehtml ; done
