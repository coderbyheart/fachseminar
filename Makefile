all: fachseminar.pdf

fachseminar.pdf: fachseminar.tex bibliothek.bib
	pdflatex -interaction=nonstopmode fachseminar.tex
	bibtex fachseminar.aux
	pdflatex -interaction=nonstopmode fachseminar.tex
	pdflatex -interaction=nonstopmode fachseminar.tex

clean:
	-/bin/rm *.lof *.log *.lot *.aux *.bbl *.toc *.blg *.dvi
