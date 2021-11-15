reset
set term tikz size 15cm,3cm
set output "LSW1-DT.tex"
set size ratio -1
unset key
unset xtics
unset ytics
unset border
set view map
load '../moreland.pal'
set contour both
set cntrparam levels incremental 0,.1,1
set cbrange [.4:.8]
set cbtics ("0.8" .8,"0.6" .6,"0.4" .4)
set dgrid3d
set pm3d interpolate 2,2
set multiplot layout 1,4 margins 0,1,0,1 spacing 0.1,0
set title "\\SI{0.25}{\\percent} drift" offset 0,-2.5
splot "LSW1-DT" u 1:2:3 with pm3d
set title "\\SI{0.50}{\\percent} drift" offset 0,-2.5
splot "LSW1-DT" u 1:2:4 with pm3d
set title "\\SI{0.75}{\\percent} drift" offset 0,-2.5
splot "LSW1-DT" u 1:2:5 with pm3d
set title "\\SI{1.00}{\\percent} drift" offset 0,-2.5
splot "LSW1-DT" u 1:2:6 with pm3d
unset multiplot
set output