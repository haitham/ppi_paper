set key bottom
set logscale xy
set xlabel "Rank"
set ylabel "Enrichment"
set size 0.8,0.8
set term postscript eps enhanced
set output "enrich-rank.eps"

plot "rat" u 8 t "length = 6" with p pt 4, \
     "rat" u 6 t "length = 7" w p pt 2, \
     "rat" u 4 t "length = 8" w p pt 6, \
     "rat" u 2 t "length = 9" w p pt 1

!epstopdf enrich-rank.eps


#set size 0.7,0.7

unset logscale x
set xlabel "Path weight"
set output "enrich-score.eps"
plot "rat" u 3:4 t "" w p
!epstopdf enrich-score.eps