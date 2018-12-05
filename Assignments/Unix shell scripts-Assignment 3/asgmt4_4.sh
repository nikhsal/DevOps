echo "Enter a file name: \c"
read fname
tot=`wc -c < $fname`
tot=`expr $tot - 1`
count=0
while [ $tot -gt 0 ]
do
        for ch in `cat $fname | cut -c $tot`
        do
                case $ch in
                        a|A)count=`expr $count + 1`;;
                        e|E)count=`expr $count + 1`;;
                        i|I)count=`expr $count + 1`;;
                        o|O)count=`expr $count + 1`;;
                        u|U)count=`expr $count + 1`;;
                esac
        done
	tot=`expr $tot - 1`
done
echo "Count is $count"
