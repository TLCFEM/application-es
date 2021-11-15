set term tikz size 6.5cm,4cm
set output "LSW2-SHEAR.tex"
set key right top at screen .95,.95 spacing 1.1
set xrange [0:21]
# set x2range [0:1.5]
set yrange [0:2.2]
set xlabel "top displacement (\\si{\\milli\\metre})"
# set x2label "drift ratio (\\si{\\percent})"
set ylabel "base resistance (\\SI{E2}{\\kilo\\newton})"
set xtics nomirror in 0,3,12
# set x2tics nomirror in 0,.25,1
set ytics nomirror in 0,1,2
set mytics 2
set margins 0,0,0,0
unset grid
set border 15
plot "LSW2-SHEAR" using 1:($5)/100000 w lp pointinterval 50 lw 2 lc rgb "#984ea3" title "nodal summation",\
     "LSW2-SHEAR" using 1:($4)/100000 w lp pointinterval 50 lw 2 lc rgb "#4daf4a" title "edge summation",\
     "LSW2-SHEAR" using 1:($3)/100000 w lp pointinterval 50 lw 2 lc rgb "#377eb8" title "right foot",\
     "LSW2-SHEAR" using 1:($2)/100000 w lp pointinterval 50 lw 2 lc rgb "#e41a1c" title "left foot"     
set output