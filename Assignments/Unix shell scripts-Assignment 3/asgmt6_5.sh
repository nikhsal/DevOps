clear
echo "Enter any file name: "
read filenm
if [ -e $filenm ]
then
    echo $filenm" File exist"
    if [ -s $filenm ]
    then
    echo $filenm" File has size > 0"
    else
    rm $filenm
    echo $filenm" File is Deleted which has size = 0"
    fi
else
    echo "File not exist"
fi
