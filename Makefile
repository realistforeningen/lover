.PHONY: all clean distclean

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
	rst_to_html = rst2html
	rst_to_latex = rst2latex
endif
ifeq ($(UNAME_S),Darwin)
	rst_to_html = rst2html.py
	rst_to_latex = rst2latex.py
endif

all: lover.html lover-regi.html lover.pdf lover-regi.pdf

lover.html: lover.rst lover.css
	$(rst_to_html) --no-section-numbering --stylesheet=lover.css $< > $@
	sed -i "s/Contents/Innhold/" lover.html

lover-regi.html: lover-regi.rst lover.css
	$(rst_to_html) --no-section-numbering --stylesheet=lover.css $< > $@
	sed -i "s/Contents/Innhold/" lover.html

lover.tex: lover.rst
	$(rst_to_latex) --language=no --documentclass=scrartcl --documentoptions=a4paper,11pt --no-section-numbering $< > $@

lover-regi.tex: lover-regi.rst
	$(rst_to_latex) --language=no --documentclass=scrartcl --documentoptions=a4paper,11pt --no-section-numbering $< > $@
	
lover.pdf: lover.tex
	pdflatex $<
	pdflatex $<
	pdflatex $<

lover-regi.pdf: lover-regi.tex
	pdflatex $<
	pdflatex $<
	pdflatex $<
	
clean:
	$(RM) *.log *.aux *.out *.toc
	$(RM) *.tex

distclean: clean
	$(RM) *.pdf *.html
