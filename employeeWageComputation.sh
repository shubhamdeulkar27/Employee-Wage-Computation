#!/bin/bash -x

#CONSTANTS
IS_ABSENT=0
IS_PART_TIME=1
IS_FULL_TIME=2
EMPLOYEE_WAGE_PER_HOUR=20
NUMBER_OF_WORKING_DAYS=20
MAX_WORKING_HOURS=100
MAX_WORKING_DAYS=20

#VARIABLES
monthlyWage=0
totalWorkingHours=0
totalWorkingDays=0

#FUNCTION TO GET WORKING HOURS
function employeeHours(){
	checkEmployee=$(( RANDOM%3 ))
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
	echo $EMPLOYEE_HOURS
}

#CALCULATING DAILY AND MONTHLY WAGES
while (( $totalWorkingHours<$MAX_WORKING_HOURS && $totalWorkingDays<$MAX_WORKING_DAYS ))
do
	(( totalWorkingDays++ ))
	EMPLOYEE_HOURS=$( employeeHours )
	dailyWage=0
	totalWorkingHours=$(( $totalWorkingHours+$EMPLOYEE_HOURS ))
	dailyWage=$(( $EMPLOYEE_HOURS*$EMPLOYEE_WAGE_PER_HOUR ))
	monthlyWage=$(( $monthlyWage+$dailyWage ))
done
