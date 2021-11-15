set term tikz size 6.5cm,4cm
set output "SP2.tex"
set key noopaque right bottom at screen .85,.075 maxrow 3 spacing 1 width -1 samplen .5
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
plot "SP-1X1-GCMQ-I" using ($1)*1000:2 w lp pointinterval 11 lw 2 lc rgb "#e41a1c" title "-I (1)",\
     "SP-2X2-GCMQ-I" using ($1)*1000:2 w lp pointinterval 11 lw 2 lc rgb "#377eb8" title "-I (2)",\
     "SP-4X4-GCMQ-I" using ($1)*1000:2 w lp pointinterval 11 lw 2 lc rgb "#4daf4a" title "-I (4)",\
     "SP-1X1-GCMQ-L" using ($1)*1000:2 w lp pointinterval 17 lw 2 lc rgb "#e41a1c" title "-L (1)",\
     "SP-2X2-GCMQ-L" using ($1)*1000:2 w lp pointinterval 17 lw 2 lc rgb "#377eb8" title "-L (2)",\
     "SP-4X4-GCMQ-L" using ($1)*1000:2 w lp pointinterval 17 lw 2 lc rgb "#4daf4a" title "-L (4)",\
     "SP-1X1-GCMQ-G" using ($1)*1000:2 w lp pointinterval 29 lw 2 lc rgb "#e41a1c" title "-G (1)",\
     "SP-2X2-GCMQ-G" using ($1)*1000:2 w lp pointinterval 29 lw 2 lc rgb "#377eb8" title "-G (2)",\
     "SP-4X4-GCMQ-G" using ($1)*1000:2 w lp pointinterval 29 lw 2 lc rgb "#4daf4a" title "-G (4)"
set output