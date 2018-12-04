#!/bin/bash
echo -n "Enter number : "
read n
 
# store number of digit 
sum=0
 
# use while loop to caclulate the sum 
while [ $n -gt 0 ]
do
	 sum=$(( $sum + $n )) 
	 n=$(( $n - 1 ))  
done
echo  "Sum is $sum"