set term postscript eps enhanced color "Arial" 25 
## 
#set lmargin 5 
#set bmargin 5 
#set rmargin 2 
#set tmargin 2
##  
set xlabel "y" 
set ylabel "P_Y(y)" 
## 
set output "uni_2.eps" 
#
set xrange[-1:3] 
set yrange[-0.1:2] 
#set zrange[0:12] 

#
set xtics 1
set ytics 1
#set ztics 5

#set zeroaxis lt -1
##
#set label "(0, 0.4)" at 0,0.4

#unset key

set sample 1000
#set size square
plot	(x<0) ? 0: (x<1) ? x: (x <2) ? 2-x: 0  w l lt 1 lw 2 lc 1 ti "n=2"
## 
set output 
reset 
set term wxt enhanced 


set term postscript eps enhanced color "Arial" 25 
## 
#set lmargin 5 
#set bmargin 5 
#set rmargin 2 
#set tmargin 2
##  
set xlabel "y" 
set ylabel "P_Y(y)" 
## 
set output "uni_3.eps" 
#
set xrange[-1:4] 
set yrange[-0.1:2] 
#set zrange[0:12] 

#
set xtics 1
set ytics 1
#set ztics 5

#set zeroaxis lt -1
##
#set label "(0, 0.4)" at 0,0.4

#unset key

set sample 1000
#set size square
plot	(x<0) ? 0: (x<=1) ? 0.5*x**2: (x <=2) ? -x**2 + 3*x -1.5: (x <=3) ? 0.5*(x-3)**2 : 0  w l lt 1 lw 2 lc 1 ti "n=3"
## 
set output 
reset 
set term wxt enhanced 

