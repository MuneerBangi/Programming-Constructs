#!/bin/bash -x

echo "Enter number 1"
read a
echo "Enter Number2"
read b
echo "Enter number3"
read c

res1=$((a+b*c))
res2=$((a%b+c))
res3=$((c+a/b))
res4=$((a*b+c))

arraysort=( [1]=$res1 [2]=$res2 [3]=$res3 [4]=$res4 )

for (( j=1; j<=4; j++ ))
do
        for (( k=1; k<=3; k++ ))
        do

                if [ ${arraysort[k]} -lt ${arraysort[$((k+1))]} ]
                then
                        temp=${arraysort[k]}
                        arraysort[$k]=${arraysort[$((k+1))]}
                        arraysort[$((k+1))]=$temp

                fi
        done
done
echo ${arraysort[@]}
