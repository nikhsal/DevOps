echo "Enter String"
read s
r="$(echo "$s" | rev)"
if [ "$r" = "$s" ]
then
echo "Palindrome"
else
echo "Not Palindrome"
fi

