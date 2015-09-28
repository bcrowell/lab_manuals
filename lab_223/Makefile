include whichbook.make

MODE = nonstopmode
TERMINAL_OUTPUT = err
MYSELF = Makefile

DO_PDFLATEX_RAW = pdflatex -interaction=$(MODE) $(BOOK) >$(TERMINAL_OUTPUT)
SHOW_ERRORS = \
        print "========error========\n"; \
        open(F,"$(TERMINAL_OUTPUT)"); \
        while ($$line = <F>) { \
          if ($$line=~m/^\! / || $$line=~m/^l.\d+ /) { \
            print $$line \
          } \
        } \
        close F; \
        exit(1)
DO_PDFLATEX = echo "$(DO_PDFLATEX_RAW)" ; perl -e 'if (system("$(DO_PDFLATEX_RAW)")) {$(SHOW_ERRORS)}'

# Since book1 comes first, it's the default target --- you can just do ``make'' to make it.

book1:
	m4 -P -I ../share --define=__sn $(BOOK).m4 >$(BOOK).tex
	@cp ../lab.cls .
	@cp ../*.sty .
	@$(DO_PDFLATEX)
	@rm -f $(TERMINAL_OUTPUT) # If pdflatex has a nonzero exit code, we don't get here, so the output file is available for inspection.
	@rm -f $(BOOK).tex lab.cls lmmath.sty mixmath.sty
	@echo "Do this at least three times, or do a 'make book'. (Three times is the minimum to get the appendix numbers right in the toc.)"

book:
	m4 -P -I ../share $(BOOK).m4 >$(BOOK).tex
	@cp ../lab.cls .
	@cp ../*.sty .
	@$(DO_PDFLATEX)
	@$(DO_PDFLATEX)
	@$(DO_PDFLATEX)
	@../scripts/harvest_aux_files.rb
	@rm -f $(TERMINAL_OUTPUT) # If pdflatex has a nonzero exit code, we don't get here, so the output file is available for inspection.
	@rm -f $(BOOK).tex lab.cls lmmath.sty mixmath.sty

clean:
	rm -f *~ a.a a.a~ *.log *.aux *.toc cover.jpg cover.pdf lulu_lab.pdf temp.pdf

post:
	cp $(BOOK).pdf $(HOME)/Lightandmatter

prepress:
	# The following makes Lulu not complain about missing fonts:
	pdftk $(BOOK).pdf cat 3-end output temp.pdf
	gs -q  -dCompatibilityLevel=1.4 -dSubsetFonts=false -dPDFSETTINGS=/printer -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=lulu_$(BOOK).pdf temp.pdf -c '.setpdfwrite'

cover:
	pdftk $(BOOK).pdf cat 1 output cover.pdf
	convert -density 300x300 cover.pdf cover.jpg
