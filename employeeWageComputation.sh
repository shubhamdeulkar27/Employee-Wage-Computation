#!/bin/bash -x

#CONSTANTS
IS_ABSENT=0
IS_PART_TIME=1
IS_FULL_TIME=2
EMPLOYEE_WAGE_PER_HOUR=20
NUMBER_OF_WORKING_DAYS=20

#VARIABLES
monthlyWage=0

for (( day=1 ; day<=$NUMBER_OF_WORKING_DAYS ; day++ ))
do
	checkEmployee=$(( RANDOM%3 ))
	dailyWage=0

	#CALCULATING DAILY WAGE
	case $checkEmployee in
		$IS_FULL_TIME)
			EMPLOYEE_HOURS=8
		;;
		$IS_PART_TIME)
			EMPLOYEE_HOURS=4
		;;
		$IS_ABSENT)
			EMPLOYEE_HOURS=0
		;;
		*)
			printf "Invalid"
		;;
	esac
	dailyWage=$(( $EMPLOYEE_HOURS*$EMPLOYEE_WAGE_PER_HOUR ))
	monthlyWage=$(( $monthlyWage+$dailyWage ))
done
