#!/bin/bash
clear
i="y"
db="item.dat"
RANDOM=$$
while [ $i = "y" ]
do
clear
echo "1.View the Data Base "
echo "2.View Specific Records "
echo "3.Add Records "
echo "4.Delete Records "
echo "5.Exit "
echo "Enter your choice "
read ch
    case $ch in
        1)cat $db;;
        2)echo "Enter ItemCode "
          read roll_num
          awk -v rnum="$roll_num" -F"\t" '$1==rnum' ./"$db";;
  	3)echo "Enter new Quantity:"
          read name
          echo "Enter rate "
          read sem
          echo "$RANDOM,$name,$sem">>$db;;
        4)echo "Enter ItemCode"
          read roll_num
		  sed -i "/$roll_num/d" ./"$db"
          #  awk -v rnum="$roll_num" -F"\t" '$1==rnum' ./"$db"| tee ./"$db";;	  
          echo "Record is deleted"
         cat $db;;           
        5)exit;;
        *)echo "Invalid choice ";;
    esac
echo "Do u want to continue ?"
read i
if [ $i != "y" ]
then
    exit
fi
done  
