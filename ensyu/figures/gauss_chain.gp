set term postscript eps enhanced color "Arial" 25 

set output "gauss_dist.eps" 


#
#set xrange[-10:10] 
set yrange[-0.1:1.2] 

set notics
#
set arrow 11 from -10,0 to 10,0 
set arrow 12 from 0,0 to 0,1.2 
set label "0" at -0.1,-0.05
set label "1" at -0.3,1
#
unset key
set noborder
##
set sample 1000

#set arrow 1 from -1,0.22 to 1,0.22 heads lw 3
set arrow 2 from -1,0 to -1,0.5 nohead lt 3
set arrow 3 from 1,0 to 1,0.5 nohead lt 3
set arrow 4 from 0,1 to 4,1 nohead lt 3
#set label "{/Symbol s}_Y = (N V(u))^{1/2}" at 1.2,0.22

set label "-{/Symbol s}= -1" at -1.4,-0.05
set label "{/Symbol s}=1" at 0.8,-0.05
##
#set size square

f(x) = (1/(2*pi))**0.5*exp(-1*x**2/2)

#plot f(x) w l lt 1 lw 2 lc 1 noti

x0= -4   # Ï•ª‹æŠÔ‚Ì‰ºŒÀ
x1= 4   # Ï•ª‹æŠÔ‚ÌãŒÀ
N=1000   # Ï•ª‹æŠÔ‚Ì•ªŠ„”

set xrange [x0:x1]
set samples N+1

plot lastx=0.0,lasty=0.0,integ = 0.0,\
     "+" using 1:(f($1)) w l lw 3 title "gauss function exp(-x^2)", \
     "+" using 1:(dx=$1-lastx, \
     integ = ($0==0 ? 0.0 : integ+dx*(f($1)+lasty)*0.5), \
     lastx=$1, \
     lasty=f($1), \
     integ) w l lw 3 title "integral"


## 
set output 
reset 
set term wxt enhanced 


set term postscript eps enhanced color "Arial" 25 

set output "gauss_chain.eps" 


#
set xrange[-5:5] 
set yrange[-0.05:0.5] 

set notics
#set xtics 1
#set ytics 1
#
set arrow 11 from -5,0 to 5,0 
set arrow 12 from 0,-0.05 to 0,0.5 
#set label "O" at -0.5,-0.02
#
unset key
set noborder

##
set sample 1000

set arrow 1 from -1,0.22 to 1,0.22 heads lw 3
set arrow 2 from -1,0 to -1,0.5 nohead lt 3
set arrow 3 from 1,0 to 1,0.5 nohead lt 3
set label "{/Symbol s}_Y = (N V(u))^{1/2}" at 1.2,0.22

set label "-{/Symbol s}_Y" at -1.4,-0.02
set label "{/Symbol s}_Y" at 1,-0.02
##
#set size square

f(x) = (1/(2*pi))**0.5*exp(-1*x**2/2)

plot f(x) w l lt 1 lw 2 lc 1 noti

#x0= -10   # Ï•ª‹æŠÔ‚Ì‰ºŒÀ
#x1= 10   # Ï•ª‹æŠÔ‚ÌãŒÀ
#N=1000   # Ï•ª‹æŠÔ‚Ì•ªŠ„”

#set xrange [x0:x1]
#set samples N+1

#plot lastx=0.0,lasty=0.0,integ = 0.0,\
#     "+" using 1:(f($1)) w l lw 3 title "gauss function exp(-x^2)", \
#     "+" using 1:(dx=$1-lastx, \
#     integ = ($0==0 ? 0.0 : integ+dx*(f($1)+lasty)*0.5), \
#     lastx=$1, \
#     lasty=f($1), \
#     integ) w l lw 3 title "integral"


## 
set output 
reset 
set term wxt enhanced 
