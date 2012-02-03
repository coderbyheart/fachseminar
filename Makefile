all: fachseminar.pdf

fachseminar.pdf: fachseminar.tex bibliothek.bib abstract.tex intro.tex Makefile semws.tex loesungen.tex abkuerzungen.tex fazit.tex
	-pdflatex -interaction=nonstopmode fachseminar.tex
	bibtex fachseminar.aux
	-pdflatex -interaction=nonstopmode fachseminar.tex
	pdflatex -interaction=nonstopmode fachseminar.tex
	mv fachseminar.pdf Dynamische\ Integration\ von\ Webservices\ -\ Markus\ Tacker\ -\ 2012-02-03.pdf

clean:
	-/bin/rm *.lof *.log *.lot *.aux *.bbl *.toc *.blg *.dvi *~ *.out
