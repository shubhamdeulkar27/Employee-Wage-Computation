#!/bin/bash -x

#CHECKING EMPLOYEE IS PRESENT
IS_PRESENT=1
checkEmployee=$(( RANDOM%2 ))
if (( $checkEmployee==$IS_PRESENT ))
then
	printf "Employee Is Present\n"
else
	printf "Employee Is Not Present\n"
fi
