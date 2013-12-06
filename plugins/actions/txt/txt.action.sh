while read line
do
    eval echo $line
done < $action_input
