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

count1=($head $tail)

echo "Head=$head"  "Tail=$tail"

max=0

for (( i=0; i<${#count1[@]}; i++ ))
do

if [ ${count1[$i]} -gt $max ]
        then
        max=${count1[$i]}
        ind=$i
        count=0

elif [ ${count1[$i]} -eq $max ]
        then
        max=${count1[$i]}
        count=1
fi

done

if [ $count -eq 0 ]
then

percent=`echo "scale=2; $max / 10 * 100" | bc -l`

echo "Percentage of getting ${Comb1[ind]} is maximum $percent"

else

echo "Two or more entity have same value"

fi

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

count2=($hh $ht $th $tt)

echo "HH=$hh"  "HT=$ht"  "TH=$th"  "TT=$tt"

max=0

for (( i=0; i<${#count2[@]}; i++ ))
do

if [ ${count2[$i]} -gt $max ]
        then
        max=${count2[$i]}
        ind=$i
        count=0

elif [ ${count2[$i]} -eq $max ]
        then
        max=${count2[$i]}
        count=1
fi

done

if [ $count -eq 0 ]
then

percent=`echo "scale=2; $max / 10 * 100" | bc -l`

echo "Percentage of getting ${Comb2[ind]} is maximum $percent"

else

echo "Two or more entity have same value"

fi

}

triplet() {

declare -A Triplet

Comb3=(HHH HHT HTH THH TTT TTH THT HTT)

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

        Triplet[$i]=${Comb3[$random]}

done

echo ${Triplet[@]}

count3=($hhh $hht $hth $thh $ttt $tth $tht $htt)

echo "HHH=$hhh"  "HHT=$hht"  "HTH=$hth"  "THH=$thh"  "TTT=$ttt"  "TTH=$tth"  "THT=$tht"  "HTT=$htt"

max=0

for (( i=0; i<${#count3[@]}; i++ ))
do

if [ ${count3[$i]} -gt $max ]
        then 
	max=${count3[$i]}
        ind=$i
	count=0

elif [ ${count3[$i]} -eq $max ]
	then 
	max=${count3[$i]}
	count=1
fi

done

if [ $count -eq 0 ]
then

percent=`echo "scale=2; $max / 10 * 100" | bc -l`

echo "Percentage of getting ${Comb3[ind]} is maximum $percent"

else 

echo "Two or more entity have same value"

fi

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

