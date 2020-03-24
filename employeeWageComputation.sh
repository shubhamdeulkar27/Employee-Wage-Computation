#!/bin/bash -x

#CHECKING EMPLOYEE IS PRESENT
IS_PRESENT=1
EMPLOYEE_WAGE_PER_HOUR=20
FULL_DAY_HOURS=8

checkEmployee=$(( RANDOM%2 ))
dailyWage=0
if (( $checkEmployee==$IS_PRESENT ))
then
	dailyWage=$(( $FULL_DAY_HOURS*$EMPLOYEE_WAGE_PER_HOUR ))
else
	printf "Employee Is Not Present\n"
fi
