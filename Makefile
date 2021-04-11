SECS := $(wildcard secs/*.tex)

all: PSaAV.pdf

PSaAV.pdf: main.tex $(SECS) mstyle.sty
	pdflatex main.tex
	pdflatex main.tex
	mkdir -p build
	mv *.toc build
	mv *.aux build
	mv *.log build
	mv *.out build
	mv main.pdf PSaAV.pdf
	rm -rf build
