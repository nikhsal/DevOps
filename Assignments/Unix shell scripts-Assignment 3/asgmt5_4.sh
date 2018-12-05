uid=$1

if [ $# -eq 0 ]
then
        echo "Enter login name"
        read uid
fi

ch=`who | grep $uid -c`
if [ $ch -eq 1 ]
then
        echo "User is logged in"
else
        echo "user is not logged in"
fi

echo "Total user are : `who | wc -l`"
