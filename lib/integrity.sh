#!/bin/bash
source .integrity
source $integrity_home/lib/parts/init.part

paramcount=$#
d_echo "Paramcount = $paramcount"

if (( paramcount > 0 ))
then
    d_echo "Checksfolder parameter=$1"
    checksfolder=$1
else
    d_echo "Checksfolder parameter=<empty>"
    checksfolder=checks
fi

if [ ! -d "$checksfolder" ]
    then 
        echo "No folder '$checksfolder'. Will try 'checks'."
        checksfolder=checks
        if [ ! -d "$checksfolder" ]
        then 
            echo "No folder '$checksfolder'. Will stop."
            exit 1
        fi
fi
d_echo "Checks in '$checksfolder'"

source $integrity_home/lib/parts/prepare.part
source $integrity_home/lib/parts/checks.part
source $integrity_home/lib/parts/finalize.part



