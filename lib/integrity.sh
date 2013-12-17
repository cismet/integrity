#!/bin/bash
checksfolder=$1
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
source .integrity

source $integrity_home/lib/parts/init.part
source $integrity_home/lib/parts/prepare.part
source $integrity_home/lib/parts/checks.part
source $integrity_home/lib/parts/finalize.part



