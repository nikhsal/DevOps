rd=0
word=0
ln=0
terminal=/dev/pts/0
exec<$1
while read line
do
        ln=`expr $ln + 1`
        set $line
        word=`expr $word + $#`
done
echo "Total no. of lines: $ln"
echo "Total no of words: $word"

