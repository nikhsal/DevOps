echo "FileName   Date & Time   Permissions"
echo "------------------------------------------------------------------"

ls -ltr | awk '{if(NR>1) print}' | awk '{print $9" "$6" "$7" "$8" "$1}'
q="$(ls -l | cut -c 1 | grep d | wc -l)"
f="$(ls -l | wc -l)"
f1="$(ls -l | cut -c 1 | grep - | wc -l)"
echo "Total Files : $((f-1))"
echo "Total Directory: ${q}"
echo "Total normal files : ${f1}"

