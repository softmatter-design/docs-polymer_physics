#!/gnuplot
#

set term postscript eps enhanced color "Arial" 25
#set term wxt enhanced

set lmargin 2
set bmargin 2
set rmargin 2
set tmargin 2

######
set output "PB_5_fig1.eps"
#
set xlabel "{/30 {/Symbol f}_{op}}"
set ylabel "{/30 {/Symbol D}{/Arial-Italic f}_{mix}}"
#
set xtics 3
set ytics 2
#
set xrange [-1:1]
set yrange [0.3:0.8]
#
set key at 0.95,0.45
set key spacing 1.5
#
plot -0.3*x**2+x**4+0.5 w li lt 1 lw 2 lc 1 ti "(2-{/Symbol c}N)/4N < 0", \
x**4+0.5 w li lt 1 lw 2 lc 2 ti "(2-{/Symbol c}N)/4N = 0", \
x**2+x**4+0.5 w li lt 1 lw 2 lc 3 ti "(2-{/Symbol c}N)/4N > 0"

#
set output
reset
set term wxt enhanced

#####
set term postscript eps enhanced color "Arial" 25
#set term wxt enhanced

set lmargin 2
set bmargin 2
set rmargin 2
set tmargin 2
#
set output "PB_5_fig2.eps"
#
set xlabel "{/30 {/Symbol f}}"
set ylabel "{/30 {/Symbol c}{/Arial-Italic N}}"
#
set xtics 0.5
set ytics 2

set xrange [0:1]
set yrange [0:8]

set key right bottom

plot 1/(2*x*(1-x)) w li lt 1 lw 2 lc 1 ti "Spinodal", \
log((1-x)/x)/(1-2*x) w li lt 1 lw 2 lc 2 ti "Binodal" 
#
set output
reset
set term wxt enhanced

#####
set term postscript eps enhanced color "Arial" 25
#set term wxt enhanced

set lmargin 2
set bmargin 2
set rmargin 2
set tmargin 2
#
set output "PB_5_fig3.eps"
##
set xlabel "{/30 {/Symbol f}}"
set ylabel "{/30 {/Symbol c}}"
#
set xtics 0.5
set ytics 0.1

set xrange [0:1]
set yrange [0:0.4]

# N_A=10, N_B=100
# Phi_crit = 100^0.5/(10^0.5 + 100^0.5) = 0.7500
# Chi_crit = (10^0.5 + 100^0.5)/(2*10*100) = 0.089

set label "*" at first 0.76, first 0.08
set label "{/30 crit. point}" at 0.65,0.075
#
set key at 0.95,0.35
#
plot 0.5*(1/(10*x)+1/(100*(1-x))) w li lt 1 lw 2 lc 1 ti "Spinodal"

set output
reset
set term wxt enhanced

