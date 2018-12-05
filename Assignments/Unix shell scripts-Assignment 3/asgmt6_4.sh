echo "Enter name of file1"
read file1
echo "Enter name of file2"
read file2
if [ `ls -l $file1 | cut -c 2` = 'r' ]
then
if [ -e $file2 ]
then
	echo "Do you want to overwrite file? y for yes"
	read y
	if [ $y = 'y' ]
	then
		cat $file1>>$file2
	else
		exit 0
	fi
else
	cat $file1>>$file2
fi
else
	echo "Error"



fi

