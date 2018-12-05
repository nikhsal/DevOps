echo "Enter Name of the employee:\c"
read name
ecd=0
rm=0
if ecd=`grep "$name" emp.dat | cut -d "|" -f 1`
then
        dw=`grep ^["$ecd"] proj.dat | cut -d "|" -f 3`
        du=`grep ^["$ecd"] emp.dat | cut -d "|" -f 4`    
else   
echo "===Name Not Found===\n"
fi
if [ $dw = $du ]
then
     echo "$name, Today is the last day to finish your project"
    else 
    rm=`expr $du - $dw`
if [ $rm -le 0 ]
then
	$mr=`expr $dw - $du`
echo "$name, You have missed the project deadline by $mr"	
    elif [ $rm -le 30 ]
    then
      echo "$name, Hurry! only $rm days are remaining to finish your project"
 else
      echo "$name, You have still $rm days to finish the job"
    fi  
fi

