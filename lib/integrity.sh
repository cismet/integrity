#!/bin/bash

while getopts 'i:' OPTION; do
  case "$OPTION" in
    i)
      INTEGRITY_FILE="$OPTARG"
      echo "integrity file is set to ${INTEGRITY_FILE}"
      ;;
    ?)
      echo "script usage: $(basename \$0) [-i integrity file] [checks folder]" >&2
      exit 1
      ;;
  esac
done
shift "$(($OPTIND -1))"

INTEGRITY_FILE="${INTEGRITY_FILE:-".integrity"}"

source "${INTEGRITY_FILE}"
source $integrity_home/lib/parts/init.part

paramcount=$#
d_echo "Paramcount = $paramcount"

checksfolder=${1:-"checks"}
if (( paramcount > 0 ))
then
    d_echo "Checksfolder parameter=$checksfolder"
else
    d_echo "Checksfolder parameter=<empty>"
fi

checksfolder="${checks_parent_dir:-"."}/$checksfolder"

if [ ! -d "$checksfolder" ]
then 
    echo "No folder '$checksfolder'. Will stop."
    exit 1
fi

d_echo "Checks in '$checksfolder'"
cd $checksfolder

source $integrity_home/lib/parts/prepare.part
source $integrity_home/lib/parts/checks.part
source $integrity_home/lib/parts/finalize.part