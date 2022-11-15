set terminal svg font "arial,10" fontscale 1.0 size 600, 400 
set output "clang_flags_graph.svg"
set title "comparaison des perfs selon les flags d'optimisation avec GCC"
set style data histogram
set style histogram clustered gap 1 title offset 2,0.25
set style fill solid noborder
set boxwidth 0.95 
set key bmargin center horizontal Left reverse noenhanced autotitle columnhead nobox
set bmargin 12
unset xtics
set xtics nomirror rotate by -45 scale 0 font ",8"
set ytics font ",8"
set grid layerdefault   lt 0 linecolor 0 linewidth 0.500,  lt 0 linecolor 0 linewidth 0.500
set grid y
set auto y
set ylabel "les perfs" font "bold" 
set xlabel "les verions du programme" font "bold"
set datafile separator ";"
#plot 'dgemm_clang_120X80_O0.dat' using 7:xtic(1) ti col, '' u 8 ti col, '' u 9 ti col, '' u 10 ti col, '' u 11 #ti col 
plot \
newhistogram "O1", \
'dgemm_clang_120X80_O1.dat' using 7:xtic(1) ti col, '' u 8 ti col, '' u 9 ti col, '' u 10 ti col, '' u 11 ti col, \
newhistogram "O2", \
'dgemm_clang_120X80_O2.dat' using 7:xtic(1) ti col, '' u 8 ti col, '' u 9 ti col, '' u 10 ti col, '' u 11 ti col , \
newhistogram "O3", \
'dgemm_clang_120X80_O3.dat.dat' using 7:xtic(1) ti col, '' u 8 ti col, '' u 9 ti col, '' u 10 ti col, '' u 11 ti col , \
newhistogram "O4", \
'dgemm_clang_120X80_O1.dat' using 7:xtic(1) ti col, '' u 8 ti col, '' u 9 ti col, '' u 10 ti col, '' u 11 ti col, \
newhistogram "O4",
