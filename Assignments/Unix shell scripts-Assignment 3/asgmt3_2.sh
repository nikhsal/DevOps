#!/bin/bash
echo "Enter 10 numbers seperated by space"
read -a arr
positive_count=0
negative_count=0
zero_count=0
i=0
while [ ${#arr[@]} -ne 10 ]
do
	echo "Enter 10 numbers seperated by space"
	read -a arr
done
	
for elem in ${arr[@]}
do 
  if test $elem -eq 0
	then
		zero_count=$((zero_count + 1))
   elif test $elem -lt 0
	then 
		negative_count=$((negative_count + 1))
   else
		positive_count=$((positive_count + 1))
  fi  
done
echo "Count of Positive numbers $positive_count" 
echo "Count of Zero numbers $zero_count"
echo "Count of Negative numbers $negative_count"
arr=($(IFS=$'\n' sort -n <<< "${arr[*]}")) 
echo "Sorted Input: ${arr[@]}" 



