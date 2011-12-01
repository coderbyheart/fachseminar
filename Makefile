all: fachseminar.pdf

fachseminar.pdf: fachseminar.tex bibliothek.bib abstract.tex intro.tex Makefile semws.tex loesungen.tex abkuerzungen.tex verwendung.tex fazit.tex ausblick.tex
	-pdflatex -interaction=nonstopmode fachseminar.tex
	bibtex fachseminar.aux
	-pdflatex -interaction=nonstopmode fachseminar.tex
	pdflatex -interaction=nonstopmode fachseminar.tex

clean:
	-/bin/rm *.lof *.log *.lot *.aux *.bbl *.toc *.blg *.dvi
