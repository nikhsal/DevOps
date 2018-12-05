#!/bin/bash 
echo "1 2 3">mat.txt
echo "4 5 6">>mat.txt
echo "7 8 9">>mat.txt
echo "1 1 1">mat2.txt
echo "1 1 1">>mat2.txt
echo "1 1 1">>mat2.txt
awk '{for (i=1;i<=NF;i++) total[FNR","i]+=$i;} END{for (j=1;j<=FNR;j++) {for (i=1;i<=NF;i++) printf "%3i ",total[j","i]; print "";}}' mat.txt mat2.txt


