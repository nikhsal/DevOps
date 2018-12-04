n=0
while [ $n -eq 0 ]
do
echo "Enter Movie no"
read t
echo "Enter Movie Name"
read m
echo "Enter Year"
read y
echo "Enter actor"
read a
echo "Enter 1 to quit or 0 to continue"
read n
#z=$(grep ^$t, movie.txt)
#echo "$z"
if grep ^$t, movie.txt
then
echo "Already Exists"
elif [ "$y" -ge 2008 ] 
then
echo "Invalid year"
elif [ "$y" -lt 1850 ] 
then
echo "Invalid Year"
else
echo "$t,$m,$y,$a">>movie.txt
fi
done
