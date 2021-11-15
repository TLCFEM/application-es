set term tikz size 6.5cm,4cm
set output "LSW1-GT.tex"
set key right top at screen 1,.95 width 2 samplen 0.5
set xrange [0:21]
set x2range [0:1.75]
set yrange [0:3.7]
set xlabel "top displacement (\\si{\\milli\\metre})"
set x2label "drift ratio (\\si{\\percent})"
set ylabel "base resistance (\\SI{E2}{\\kilo\\newton})"
set xtics nomirror in 0,3,12
set x2tics nomirror in 0,.25,1
set ytics nomirror in 0,1,3
set mytics 2
set margins 0,0,0,0
unset grid
set border 15
plot "LSW1-EXP" using 1:($2)/100 w l lw 2 lc rgb "#999999" notitle,\
     "LSW1-GT" using 1:($2)/100000 w lp pointinterval 59 lw 2 lc rgb "#1b9e77" title "$g_t=\\SI{0.5}{\\kilo\\newton\\per\\metre^2}$",\
     "LSW1-GT" using 1:($3)/100000 w lp pointinterval 53 lw 2 lc rgb "#d95f02" title "$g_t=\\SI{1.0}{\\kilo\\newton\\per\\metre^2}$",\
     "LSW1-GT" using 1:($4)/100000 w lp pointinterval 47 lw 2 lc rgb "#7570b3" title "$g_t=\\SI{1.5}{\\kilo\\newton\\per\\metre^2}$",\
     "LSW1-GT" using 1:($5)/100000 w lp pointinterval 43 lw 2 lc rgb "#e7298a" title "$g_t=\\SI{2.0}{\\kilo\\newton\\per\\metre^2}$",\
     "LSW1-GT" using 1:($6)/100000 w lp pointinterval 41 lw 2 lc rgb "#66a61e" title "$g_t=\\SI{2.5}{\\kilo\\newton\\per\\metre^2}$"
set output