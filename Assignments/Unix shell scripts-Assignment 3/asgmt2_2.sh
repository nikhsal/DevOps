#!/bin/bash
echo "Enter 2 numbers for division:"
 read num1
# use while loop to get proper input
while [ $num1 -lt 1 ]
do
	 echo Please enter a number greater than 0. 
	 read num1
done
read num2
while [ $num2 -lt 1 ]
do
	 echo Please enter a number greater than 0. 
	 read num2
done
echo "Division of greater num by smaller num is:"
if [ $num1 -lt $num2 ]
then
expr $num2 / $num1 | bc -l
else
expr $num1 / $num2 | bc -l
fi