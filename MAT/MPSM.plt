set term tikz size 6.5cm,3.5cm
set output "MPSM.tex"
set key samplen 1 width -1 spacing 2 right bottom at 18.5,-290
set xrange [-2:15]
set yrange [-550:550]
set xlabel "strain"
set ylabel "stress"
set mxtics 2
set mytics 2
set xtics format ""
set ytics format ""
set margins 0,0,0,0
set grid
plot 2e5*x/1E3 dt 2 lc rgb "#CC0066" notitle,\
     4e3*(x/1E3-.002)+400 dt 2 lc rgb "#CC0066" notitle,\
     4e3*(x/1E3+.002)-400 dt 2 lc rgb "#CC0066" notitle,\
     2e5*(x/1E3-.008)+424 dt 2 lc rgb "#CC0066" notitle,\
     2e5*(x/1E3+.001)-352.648797935727 dt 2 lc rgb "#CC0066" notitle,\
     2e5*(x/1E3-.014)+439.497092380459 dt 2 lc rgb "#CC0066" notitle,\
     "MPSM" using ($1*1E3):2 w l lc rgb "#0066CC" lw 2 notitle
set output