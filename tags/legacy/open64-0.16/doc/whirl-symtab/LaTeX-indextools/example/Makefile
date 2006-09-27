SHELL = /bin/sh
NPROC = 1

# Makefile for sample

#
# macro definitions
#

TEXFILES =	*.tex

EPSFILES = 	*.eps

BIBFILES =	*.bib


INDEXFILE =	

MACROFILES =	*.sty


#
# targets start here
#

example.pdf : example.ps
	ps2pdf example.ps example.pdf

example.ps :	\
		$(TEXFILES) \
		$(EPSFILES) \
		$(BIBFILES) \
		$(INDEXFILE) \
		$(MACROFILES)
	 - rm -f *.toc *.lof *.log *.aux *.dvi *.blg *.bbl *.idx *.ind *.ilg
	 latex example
	 bibtex example
	 latex example
	 makeindex example
	 latex example
	 dvips example -o example.ps



eps/example.eps:  fig/example.fig
	fig2dev -Lps -c fig/example.fig > eps/example.eps


clean :
	@-  rm -f *.toc *.lof *.log *.aux *.dvi *.blg *.bbl *.idx *.ind *.ilg

clear : clean
	@- rm -f example.pdf example.ps

