n=0

while [ $n -eq 0 ]
do
echo "Enter CD no"
read t
echo "Enter Movie Name"
read m
echo "Enter Year"
read y
echo "Enter Language"
read a
echo "Enter price"
read p
echo "Enter 1 to quit or 0 to continue"
read n
echo "$t,$m,$y,$a,$p">>movie.txt
done
