set datafile separator ';'
#set terminal epslatex
set key outside
set title "T_a&T_b"


set xlabel "Time step, s."
set ylabel "T, °C"

# plot sin(x)
# plot "T_a.csv" using 1:2 title "T_a" with lines lt 3, plot for [col=2:2] "T_b.csv" using 1:3 title "T_b" with lines lt 1

# filename="T_a.csv"
# system("echo $PLOT_INPUT")

plot for [col=2:2] "T_a.csv" using col:xtic(3) with lines title columnheader, for [col=2:2] "T_b.csv" using col:xtic(1) with lines title columnheader
