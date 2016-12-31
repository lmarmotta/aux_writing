#!/usr/bin/gnuplot 

# Gnuplot script for black and white graphs exported in a *.pdf image.

# Terminal for this type of image.
set term pdf monochrome size 15.0cm,9.0cm

# Auxiliar std for special portuguese characters.
set encoding iso_8859_1

# Name of the output file.
set output "schemes.pdf"

# I like grids.
set grid

# Tics fonts and sizes.
set xtics font "Times-Roman, 13"
set ytics font "Times-Roman, 13"

# Labels and titles names.
set xlabel "x position" center
set ylabel "Density" center
set title "Analytical vs Numerical"

# Let margins for better looking graphs.
set offset graph 0.10,0.10,0.10,0.10

# Border width.
set border lw 2

# Size of the points.
set pointsize 0.3

# Box around keys
set key box font ",12"

# Let it be man !
plot "gnuplot_out1.out" u 1:2 with linespoints lt -1 lw 0.1 pt 4 title "Exact",\
     "gnuplot_out2.out" u 1:2 with lines lw 1.5 title "Numerical"

