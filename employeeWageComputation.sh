#!/bin/bash -x

IS_PRESENT=1

checkEmployee=$(( RANDOM%2 ))

if (( $checkEmployee==$IS_PRESENT ))
then
	printf "Employee Is Present"
else
	printf "Employee Is Not Present"
fi
