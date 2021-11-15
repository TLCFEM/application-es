set term tikz size 6.5cm,3.5cm
set output "TSAI.tex"
unset key
set xrange [*:*]
set yrange [-33:6]
set xlabel "strain"
set ylabel "stress"
# set label at graph .6,.35 "not to scale"
set mxtics 2
set mytics 2
set xtics format ""
set ytics format ""
set margins 0,0,0,0
set grid
plot "TSAI" using ($1*1E3):2 w l lc rgb "#CC6600" lw 2 notitle
set output