echo "Enter Movie no"
read t
if grep ^$t, movie.txt
then
echo "Already Exists"
sed '/^'$t',/d' movie.txt>movie1.txt 
fi
