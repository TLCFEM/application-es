reset
set term tikz size 10cm,2.5cm
set size ratio -1
set output "DT.tex"
set multiplot layout 1,3 margins 0,1,0,1 spacing 0.15,0
unset key
unset xtics
unset ytics
unset border
set view map
# set palette rgb -30,-31,-32
load '../moreland.pal'
set contour both
# set cntrparam levels incremental 0,.1,1
set cntrparam bspline order 2
set cbrange [.1:.9]
set cbtics ("0.8" .8,"0.6" .6,"0.4" .4,"0.2" .2)
set dgrid3d
set pm3d interpolate 2,2
set origin 0,0
set title "\\numproduct{1x1} mesh grid" offset 0,-1
splot "DT-1X1-GCMQ" with pm3d
set origin .8,0
set title "\\numproduct{2x2} mesh grid" offset 0,-1
splot "DT-2X2-GCMQ" with pm3d
set origin 1.6,0
set title "\\numproduct{4x4} mesh grid" offset 0,-1
splot "DT-4X4-GCMQ" with pm3d
unset multiplot
set output