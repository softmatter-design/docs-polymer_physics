set term postscript eps enhanced color "Arial" 25 
## 
#set lmargin 5 
#set bmargin 5 
#set rmargin 2 
#set tmargin 2
## 
set output "uni_jyouken.eps" 
#
set xrange[-0.2:1.5] 
set yrange[-0.2:1.5] 
#set zrange[0:12] 

#
unset xtics
unset ytics
#set ztics 5

set noborder
#set zeroaxis 
set arrow 11 from -0.2,0 to 1.5,0 
set arrow 12 from 0,-0.2 to 0,1.5 
set label "O" at -0.1,-0.1
set label "1" at 1,-0.1
set label "1" at -0.1,1
set xlabel "x_1"
# at 1.4,-0.1
set ylabel "x_2"
# at -0.1, 1.4 rotate by 90

set label "y" at -0.1,0.7 textcolor lt 2
set label "y < 1" at 0.65,0.15 textcolor lt 2
set label "y - 1" at 1.05,0.45 textcolor lt 3
set label "y > 1" at 0.35,1.2 textcolor lt 3
set label "x_2 = y - x_1" at 0.25, 0.6

#unset key

#set style arrow 1 size graph 0.02,20      filled nohead linewidth 2
set arrow 1 from 0,1 to 1,1 nohead lw 2 lc 1
set arrow 2 from 1,0 to 1,1 nohead lw 2 lc 1
set arrow 3 from 0,0 to 0,0.7 heads lw 4 lc 2
set arrow 4 from 1,0.4 to 1,1 heads lw 4 lc 3

set sample 1000
#
set size square
#

plot 	0.7-x  w l lt 1 lw 2 lc 2 noti, \
	1.4-x  w l lt 1 lw 2 lc 3 noti
#set parametric #媒介変数表示を使う宣言？
#set trang[0:1] #変数のtの範囲を指定．0～y～1の間に線を引く
#const = 1 #x=1をつくりますの意．
#plot 	const,t w l lt 1 lw 2 lc 1 noti
#, \
#	1  w l lt 1 lw 2 lc 1 noti
## 
set output 
reset 
set term wxt enhanced 

