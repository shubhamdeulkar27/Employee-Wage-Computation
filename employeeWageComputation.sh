#!/bin/bash -x

#CHECKING EMPLOYEE IS PRESENT
IS_ABSENT=0
IS_PART_TIME=1
IS_FULL_TIME=2

EMPLOYEE_WAGE_PER_HOUR=20
FULL_TIME_HOURS=8
PART_TIME_HOURS=4

checkEmployee=$(( RANDOM%3 ))
dailyWage=0

if (( $checkEmployee==$IS_FULL_TIME ))
then
	dailyWage=$(( $FULL_TIME_HOURS*$EMPLOYEE_WAGE_PER_HOUR ))
elif (( $checkEmployee==$IS_PART_TIME ))
then
	dailyWage=$(( $PART_TIME_HOURS*$EMPLOYEE_WAGE_PER_HOUR ))
elif (( $checkEmployee==$IS_ABSENT ))
then
	dailyWage=0
fi
