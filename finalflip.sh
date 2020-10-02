#!/bin/bash/

echo "Welcome to coin computaiton problem"

random=$(( $RANDOM % 2 ))

	case $random in 

	0) 
	echo "Head"
	;;

	1)
	echo "Tail"
	;;
	
	esac
