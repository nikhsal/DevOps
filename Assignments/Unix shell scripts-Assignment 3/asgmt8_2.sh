echo "enter name"
read dir
if [ -d $dir ]
then
cd $dir
ls
elif [ -e $dir ]
then
cat $dir
fi

