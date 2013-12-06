check=`PGPASSWORD=$cpass psql -U $cuser -d $cdbname -p $cport -h $chost -f $check_input -tA`
if [ "$check" == "t" ]
then
     result=0
else
    result=1
fi
