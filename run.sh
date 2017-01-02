#!/bin/bash

# Generate gnuplot images.
./plot.gnu

# Latex template compilation line.
pdflatex tese.tex
bibtex tese
pdflatex tese.tex
pdflatex tese.tex
