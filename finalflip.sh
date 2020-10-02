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

triplet() {

declare -A Triplet

Comb=(HHH HHT HTH THH TTT TTH THT HTT)

hhh=0
hht=0
hth=0
thh=0
ttt=0
tth=0
tht=0
htt=0

for (( i=0; i<N; i++ ))
do

random=$(( $RANDOM % 7 ))

        case $random in

        0)
        ((hhh++))
        ;;

        1)
        ((hht++))
        ;;

        2)
        ((hth++))
        ;;

        3)
         ((thh++))
        ;;

        4)
        ((ttt++))
        ;;

        5)
        ((tth++))
        ;;

        6)
	((tht++))
        ;;

        7)
        ((htt++))
        ;;

	esac

        Triplet[$i]=${Comb[$random]}

done

echo ${Triplet[@]}


echo "HHH=$hhh" "HHT=$hht" "HTH=$hth" "THH=$thh" "TTT=$ttt" "TTH=$tth" "THT=$tht" "HTT=$htt"


        percent_HHH=`echo "scale=2; $hhh / 10 * 100" | bc -l`

        percent_HHT=`echo "scale=2; $hht / 10 * 100" | bc -l`

        percent_HTH=`echo "scale=2; $hth / 10 * 100" | bc -l`

        percent_THH=`echo "scale=2; $thh / 10 * 100" | bc -l`

        percent_THH=`echo "scale=2; $thh / 10 * 100" | bc -l`

        percent_TTT=`echo "scale=2; $ttt / 10 * 100" | bc -l`

        percent_TTH=`echo "scale=2; $tth / 10 * 100" | bc -l`

        percent_THT=`echo "scale=2; $tht / 10 * 100" | bc -l`

        percent_HTT=`echo "scale=2; $htt / 10 * 100" | bc -l`


echo "Percentage of getting HHH : $percent_HHH HHT : $percent_HHT HTH : $percent_HTH THH : $percent_THH TTT : $percent_TTT TTH : $percent_TTH THT : $percent_THT HTT : $percent_HTT"


}

echo "Enter the number how many times you want to flip the coin"

read N

echo  "Enter the choice"

echo "1-Singlet  2-Doublet  3-Triplet"

read choice

case $choice in

	1)
	singlet
	;;

	2)
	doublet
	;;

	3)
	triplet
	;;
	esac
