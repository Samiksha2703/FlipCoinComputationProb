#!/bin/bash/

echo "Welcome to coin computaiton problem"

declare -A Singlet

Comb1=(H  T)

head=0
tail=0

echo "Enter the number how many times you want to flip the coin"

read N

for (( i=0; i<$N; i++ ))
do

random=$(( $RANDOM % 2 ))

        case $random in

        0)
        ((head++))
        ;;

        1)
        ((tail++))
        ;;

        esac

        Singlet[$i]=${Comb1[$random]}

done

echo ${Singlet[@]}


echo "Head=$head" "Tail=$tail"


        percent_H=`echo "scale=2; $head / 10 * 100" | bc -l`

        percent_T=`echo "scale=2; $tail / 10 * 100" | bc -l`


echo "Percentage of getting Head : $percent_H Tail : $percent_T"

