documentation: open64.ps

open64.ps: open64.dvi
	dvips -f open64.dvi > open64.ps

open64.dvi: open64.tex whirl.tex symtab.tex
	latex open64
	latex open64
	makeindex open64
	latex open64
	latex open64

clean:
	rm -f open64.{ind,aux,dvi,idx,ilg,toc,log} 

veryclean: clean
	rm -f open64.ps
