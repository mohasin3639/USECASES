#!/bin/bash

isPartTime=1
isFullTime=2
maxRateInMonth=100
empRatePerHr=20
numOfWorkingDays=20

totalEmpHr=0
totalWorkingDays=0

function getWorkHours()
{
     case $randomCheck in
                           $isPartTime )
                                 empHrs=4
                                ;;
                             $isFullTime )
                                  empHrs=8
                                ;;
                                 *)
                                   empHrs=0
                               ;;
           esac
}
  while [[ $totalEmpHr -lt $maxRateInMonth &&
          $totalWorkingDays -lt $numOfWorkingDays ]]
do
                   ((totalWorkingDays++))
                     randomCheck=$((RANDOM%3))
                     getWorkHours
                     totalEmpHr=$(($totalEmpHr+$empHrs))
                    dailyWages[$totalWorkingDays]=$(($empHrs*$empRatePerHr))
done

totalSalary=$(($totalEmpHr*$empRatePerHr))
echo $totalSalary
echo ${dailyWages[@]}
echo ${!dailyWages[@]} #days
echo ${#dailyWages[@]} #totalcountdays
