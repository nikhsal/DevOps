echo "Enter ur basic salary \c"
read sal
da=`expr $sal \* 34 / 100`
ha=`expr $sal  \* 24 / 100`
pf=`expr $sal \* 14 / 100`
Nsal=`expr $sal + $da + $ha + $pf`
echo "Gross Salary: Rs. $Nsal"
