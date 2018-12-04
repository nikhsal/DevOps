#!/bin/bash
Echo "Enter Basic salary"
read basic
dp=`expr 50 \* $basic / 100`
basicDp=`expr $basic + $dp`

da=`expr 35 \* $basicDp / 100`

hra=`expr 8 \* $basicDp / 100`

ma=`expr 3 \* $basicDp / 100`

pf=`expr 10 \* $basicDp / 100`

salary=`expr $basic + $dp + $da + $hra + $ma - $pf`
echo "Salary : Rs. $salary"

