set term tikz size 6.5cm,4cm
set output "RW1.tex"
set key left top at screen .05,.9 spacing 1.2
set xrange [-90:90]
set x2range [-2.5:2.5]
set yrange [-2:2]
set xlabel "top displacement (\\si{\\milli\\metre})"
set x2label "drift ratio (\\si{\\percent})"
set ylabel "base resistance (\\SI{E2}{\\kilo\\newton})"
set xtics nomirror in -100,25,100
set x2tics nomirror in -2,1,2
set ytics nomirror in -1,1,1
set margins 0,0,0,0
set grid
set border 15
plot "RW1-EXP" using 1:($2)/100 w l lw 2 dt 2 lc rgb "#333333" title "experiment",\
     "RW1-2X2" every 2 using 1:($2)/100000 w l lw 2 lc rgb "#ff0000" title "simulation"
set output