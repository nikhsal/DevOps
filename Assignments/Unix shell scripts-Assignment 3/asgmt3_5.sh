#!/bin/bash
echo "Enter numbers seperated by space"
read -a arr
arr=($(IFS=$'\n' sort -n <<< "${arr[*]}"))
echo "Max Value : ${arr[${#arr[@]}-1]}"
echo "Min Value : ${arr[0]}"

#a= uniq -d -c ${arr[*]}
#echo "Duplicates Input: $h


