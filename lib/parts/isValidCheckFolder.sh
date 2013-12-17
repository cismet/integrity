# /bin/sh
folder_to_check=$1
if [ -d $folder_to_check ]
then
    cd $folder_to_check
    checkCount=$(ls check.* 2> /dev/null | wc -l)
    passedCount=$(ls *failed* 2> /dev/null | wc -l)
    failedCount=$(ls *passed* 2> /dev/null | wc -l)
    #echo $checkCount
    #echo $passedCount
    #echo $failedCount
    if [ "$checkCount" -eq 1 ] && [ "$passedCount" -gt 0 ] && [ "$failedCount" -gt 0 ]
    then
        #echo prima
        exit 0
    else
        #echo nein
        exit 1
    fi
else
    #echo "falscher folder"
    exit 1
fi
