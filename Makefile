.PHONY: all clean distclean

all: lover.html lover-regi.html lover.pdf lover-regi.pdf

lover.html: lover.rst lover.css
	rst2html --no-section-numbering --stylesheet=lover.css $<  > $@
	sed -i s/Contents/Innhold/ $@

lover-regi.html: lover-regi.rst lover.css
	rst2html --no-section-numbering --stylesheet=lover.css $<  > $@
	sed -i s/Contents/Innhold/ $@

lover.tex: lover.rst
	rst2latex --language=no --documentclass=scrartcl --documentoptions=a4paper,11pt --no-section-numbering $< > $@

lover-regi.tex: lover-regi.rst
	rst2latex --language=no --documentclass=scrartcl --documentoptions=a4paper,11pt --no-section-numbering $< > $@
	
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
