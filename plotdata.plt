#!/usr/bin/env gnuplot
# Plots results of wikidata-analytics
# Data must bee prepared as table in files
# results/claimsperitem-*
# results/revisionsperitem-*
# Script has to be updated every time

### Distribution of Claims ###

set xlabel "Number of claims"
set ylabel "Number of items"
set title "Distribution of the number of claims"
set logscale y
set xrange [0:40]

set terminal 'svg'
set output 'claimsperitem.svg' 

plot 'results/claimsperitem-Feb28' with lines title "28. Feb", \
     'results/claimsperitem-Mar16' with lines title "16. Mar"

unset output

reset
#### Distribution of revisions ###

set xlabel "Number of revisions"
set ylabel "Number of items"
set title "Distribution of the number of revisions"
set logscale y
set xrange [0:300]

set terminal 'svg'
set output 'revisionsperitem.svg'

plot 'results/revisionsperitem-Feb28' with lines title "28. Feb", \
     'results/revisionsperitem-Mar16' with lines title "16. Mar"

unset output
