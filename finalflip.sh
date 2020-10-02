#!/bin/bash/


singlet() {

declare -A Singlet

Comb1=(H  T)

head=0
tail=0

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


}

doublet() {

Comb2=(HH HT TH TT)

hh=0
ht=0
th=0
tt=0

for (( i=0; i<$N; i++ ))
do

random=$(( $RANDOM % 4 ))

        case $random in

        0)
	((hh++))
        ;;

        1)
        ((ht++))
        ;;

        2)
        ((th++))
        ;;

        3)
        ((tt++))
        ;;

        esac

        Doublet[$i]=${Comb2[$random]}

done


echo ${Doublet[@]}


echo "HH=$hh" "HT=$ht" "TH=$th" "TT=$tt"


        percent_HH=`echo "scale=2; $hh / 10 * 100" | bc -l`

        percent_HT=`echo "scale=2; $ht / 10 * 100" | bc -l`

        percent_TH=`echo "scale=2; $th / 10 * 100" | bc -l`

        percent_TT=`echo "scale=2; $tt / 10 * 100" | bc -l`


echo "Percentage of getting HH : $percent_HH HT : $percent_HT TH : $percent_TH TT : $percent_TT"

}

echo "Welcome to coin computaiton problem"

echo "Enter the number how many times you want to flip the coin"

read N

echo  "Enter the choice"

echo "1-Singlet  2-Doublet"

read choice

case $choice in

	1)
	singlet
	;;

	2)
	doublet
	;;
	esac
