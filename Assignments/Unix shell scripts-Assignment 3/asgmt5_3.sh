RANDOM=$$
q=$(( ( RANDOM % 10 )  + 1 ))
n=6
y=0
while [ $n -gt 0 ]
do
echo "Enter a guess"
read g
if [ $g -eq $q ]
then
	echo "Your guess is right!"
	n=0
	y=1
elif [ $g -lt $q ]
then
	echo "$g is less than the number"
else
	echo "$g is greater than the number"
fi
n=`expr $n - 1`
done
if [ $y -eq 0 ]
then
echo "The number is $q"
fi
