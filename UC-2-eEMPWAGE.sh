#!/bin/bash -x

isPresent=1
randomCheck=$((RANDOM%2))

if [ $isPresent==$randomCheck ]
then
         empRatePerHr=20
         empHrs=10
         salary=$(($empRatePerHr*$empHrs))
else
          salary=0
fi

 echo $salary
