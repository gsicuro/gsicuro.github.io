stats "tuttiMR.dat" using 0:1 name "dati" nooutput
set term png size 1500,927 font "Helvetica,30"
set output 'voti.png'
set parametric
hmax=0.08
set trange [0:hmax]
set object 1 rectangle from 0,0 to 18,hmax behind fillcolor rgb "#FFD1DC" fillstyle solid noborder
# p "<sort -n tuttiMR.dat" u 1:(1-$0/dati_max_x) w l lw 4 lc rgb 'black' notitle, 18,t lc rgb 'red' lw 3 notitle, dati_mean_y,t lc rgb 'orange' lw 3 notitle, dati_median_y,t lc rgb 'blue' lw 3 notitle
#p 18,t lc rgb 'red' lw 3 notitle, dati_median_y,t lc rgb 'orange' lw 3 notitle, "<sort -n tuttiMR.dat" u 1:(1-$0/dati_max_x) w l lw 3 lc rgb 'blue' notitle
binwidth=1
bin(x,width)=width*floor(x/width)
set style fill solid 0.5 # fill style
p 18,t lc rgb 'red' lw 3 notitle, dati_median_y,t lc rgb 'orange' lw 3 notitle, "<sort -n tuttiMR.dat" u (bin($1,binwidth)):(1.0/dati_max_x) smooth freq w boxes lc rgb "blue" notitle
! mv voti.png ..
