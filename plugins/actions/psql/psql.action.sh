PGPASSWORD=$cpass psql -U $cuser -d $cdbname -p $cport -h $chost -f $action_input -q --pset pager=off
