#!/bin/bash
source ../../.integrity
olddir=`pwd`
cd ../..
source $integrity_home/lib/parts/init.part
cd $olddir
echo 
echo Local DB Test Tester
echo 
source $integrity_home/lib/parts/check.part
echo
