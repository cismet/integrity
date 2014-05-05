if [ $failedCounter -gt 0 ]
then
    to="th@cismet.de,jean.ruiz.1982@gmail.com,jean.ruiz@cismet.de"
    subject="Integrity Report Mail"
    message="$testCounter Tests executed. $passedCounter passed, $failedCounter failed."
    sendEmail -f donotreply@cismet.de -t "$to" -u "$subject" -m "$message" -a $action_output  -s smtp.1und1.de:587  -xu sendmail@cismet.de -xp $cismetSendmailPass -o tls=no
else 
    echo "No failed Tests. No Mail sent."    
fi


