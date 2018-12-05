n=0
echo "Itemcode,qty sold,rate">item.dat
RANDOM=$$
while [ $n -eq 0 ]
do
echo "Quantiy sold"
read q
if [ $q -eq 0 ]
then
echo "Enter Quantity greater than 0"
read q
fi
echo "Enter rate"
read r
echo "Enter 1 to quit or 0 to continue"
read n
if [ "$r" -le 100 -o "$r" -gt 10000 ] 
then
echo "Invalid rate"
else
echo "$RANDOM,$q,$r">>item.dat
fi
done
