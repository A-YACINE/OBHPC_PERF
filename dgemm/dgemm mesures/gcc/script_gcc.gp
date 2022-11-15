set style data histogram 
set style histogram clustered

#Titre
set title "Histogramme comparant les versions selon les flags de clang"

#Titre axe 
set xlabel "Differentes versions dgemm"
set ylabel "MiB/s"

#Plage valeur
set xrange [0:8]

#Remplissage histogram
set style fill solid
set xtics rotate by -45


#Sauvegarder
set terminal jpeg
set output "dgemm_gcc_120X80_O.jpeg"
plot "dgemm mesures/gcc/dgemm_gcc_120X80_O0.dat"  using 14:xtic(1) linecolor rgb "blue" , "dgemm mesures/gcc/dgemm_gcc_120X80_O1.dat" using 14:xtic(1) linecolor rgb "red" , "dgemm mesures/gcc/dgemm_clang_120X80_O2.dat" using 14:xtic(1) linecolor rgb "purple" , "dgemm mesures/gcc/dgemm_gcc_120X80_O3.dat" using 14:xtic(1) linecolor rgb "green"?  "dgemm mesures/gcc/dgemm_clang_120X80_Ofast.dat" using 14:xtic(1) linecolor rgb "yellow"
