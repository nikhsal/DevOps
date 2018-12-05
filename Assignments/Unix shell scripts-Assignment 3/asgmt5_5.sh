echo "Enter Unix Marks"
read u
echo "Enter VB.NET Marks"
read v
echo "Enter PHP Marks"
read p
sum=`expr $u + $v + $p`
avg=`expr $sum / 3`
if [ $avg -ge 70 ]
then
	echo "Distinction"
elif [ $avg -lt 70 ] && [ $avg -ge 60 ]
then
	echo "First Class"
elif [ $avg -lt 60 ] && [ $avg -ge 50 ]
then
	echo "Second Class"
elif [ $avg -lt 50 ] && [ $avg -ge 40 ]
then
	echo "Third Class"
else
	echo "Fail"
fi

