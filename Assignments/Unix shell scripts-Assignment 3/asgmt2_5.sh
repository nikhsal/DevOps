#!/bin/bash
echo "Enter Number of times(N)"
read N

i=1

echo "Enter Word"
read word 
echo "Printing Word $N times :"
while [ $i -le $N ]
do
  echo $word
  i=$((i + 1))
done

