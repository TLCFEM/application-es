set term tikz size 6.5cm,4cm
set output "MSW2.tex"
set key right top at screen .975,.9 samplen 1
set xrange [0:36]
set x2range [0:2]
set yrange [0:2]
set xlabel "top displacement (\\si{\\milli\\metre})"
set x2label "drift ratio (\\si{\\percent})"
set ylabel "base resistance (\\SI{E2}{\\kilo\\newton})"
set xtics nomirror in 0,9,27
set x2tics nomirror in 0,.5,1.5
set ytics nomirror in 0,1,2
set mytics 2
set margins 0,0,0,0
unset grid
set border 15
# set multiplot
plot "MSW2-EXP" using 1:($2)/100 w l lw 2 lc rgb "#999999" title "MSW2",\
     "MSW2-2X2" using 1:($2)/100 w l lw 4 lc rgb "#ff0000" title "GCMQ-L"
# unset xlabel
# unset x2label
# unset ylabel
# unset xtics
# unset x2tics
# unset ytics
# set size .2,.25
# set origin .75,.35
# set xrange [0:-10]
# set yrange [0:-25]
# plot "CDPC" using ($1*1000):2 w l lw 2 lc rgb "#008837" notitle
# set size .2,.25
# set origin .75,.05
# set xrange [0:1]
# set yrange [0:1.5]
# plot "CDPT" using ($1*1000):2 w l lw 2 lc rgb "#008837" notitle
# unset multiplot
set output