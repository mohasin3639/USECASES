#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerhr=20
randomCheck=$((RANDOM%3))

if (( $isPartTime == $randomCheck ))
then
       empHrs=4
elif (( $isFullTime == $randomCheck ))
then
       empHrs=8
else
       empHrs=0
fi

salary=$(($empHrs*$empRatePerhr))
echo $salary
