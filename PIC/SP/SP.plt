set term tikz size 6.5cm,4cm
set output "SP.tex"
set key noopaque right bottom at screen .7,.075 maxrow 4 spacing 1 width 1 samplen .5
set xrange [0:2]
set yrange [0:2.5]
set xlabel "top displacement (\\num{E-3})"
set ylabel "base resistance"
set xtics nomirror in
set ytics nomirror in 0,1,2
set mxtics 2
set mytics 2
set margins 0,0,0,0
set grid
set border 15
plot "SP-1X1-CPS4" using ($1)*1000:2 w lp pointinterval 11 lw 2 lc rgb "#e41a1c" title "Q4 (1)",\
     "SP-2X2-CPS4" using ($1)*1000:2 w lp pointinterval 17 lw 2 lc rgb "#377eb8" title "Q4 (2)",\
     "SP-4X4-CPS4" using ($1)*1000:2 w lp pointinterval 23 lw 2 lc rgb "#4daf4a" title "Q4 (4)",\
     "SP-8X8-CPS4" using ($1)*1000:2 w lp pointinterval 31 lw 2 lc rgb "#984ea3" title "Q4 (8)",\
     "SP-1X1-GCMQ-I" using ($1)*1000:2 w lp pointinterval 11 lw 2 lc rgb "#e41a1c" title "-I (1)",\
     "SP-2X2-GCMQ-I" using ($1)*1000:2 w lp pointinterval 17 lw 2 lc rgb "#377eb8" title "-I (2)",\
     "SP-4X4-GCMQ-I" using ($1)*1000:2 w lp pointinterval 23 lw 2 lc rgb "#4daf4a" title "-I (4)",\
     "SP-8X8-GCMQ-I" using ($1)*1000:2 w lp pointinterval 31 lw 2 lc rgb "#984ea3" title "-I (8)"
set output