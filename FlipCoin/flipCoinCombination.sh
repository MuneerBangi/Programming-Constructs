#!/bin/bash
echo "Welcome to Simulation"

declare -A coin
noOfFlip=100
coin["heads"]=0
coin["tails"]=0
persentOfHead=0
persentOfTail=0
declare -A coin2
coin2["HH"]=0
coin2["HT"]=0
coin2["TH"]=0
coin2["TT"]=0

for (( count=0; count<=$noOfFlip; count++ ))
do
	dic=$(( $RANDOM % 2 ))
	dic2=$(( $RANDOM % 2 ))
	if (( $dic > 0 ))
	then
		coin["heads"]=$((${coin[heads]} + 1))
	else
		coin["tails"]=$((${coin[tails]} + 1))
	fi
	if (( $dic"-"$dic2 == 1"-"1 ))
	then
		coin2["HH"]=$((${coin2[HH]} + 1))
	elif (( $dic"-"$dic2 == 1"-"0 ))
	then
		coin2["HT"]=$((${coin2[HT]} + 1))
	elif (( $dic"-"$dic2 == 0"-"1 ))
        then
       coin2["TH"]=$((${coin2[TH]} + 1))
	elif (( $dic"-"$dic2 == 0"-"0 ))
        then
       coin2["TT"]=$((${coin2[TT]} + 1))
	fi
done
echo "Heads: ${coin[heads]}"
echo "Tails: ${coin[tails]}"
echo "Heads-Heads : ${coin2[HH]}"
echo "Heads-Tails : ${coin2[HT]}"
echo "Tails-Heads : ${coin2[TH]}"
echo "Tails-Tails : ${coin2[TT]}"

persentOfHead=$(( $(( ${coin[heads]} * 100)) / $noOfFlip ))
persentOfTail=$(( $(( ${coin[tails]} * 100)) / $noOfFlip ))

echo "$persentOfHead%"
echo "$persentOfTail%"
