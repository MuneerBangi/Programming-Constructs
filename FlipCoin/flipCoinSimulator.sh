#! /bin/bash

heads=0;
tails=0;
tie=0;
while [ $heads -lt 21  ] && [ $tails -lt 21  ]
do
  res=$(($RANDOM % 2));
  if [ $res == 1  ]
  then
    echo Heads
	 heads=$(($heads + 1));
	 echo $heads
  else
	 echo Tails
    tails=$(($tails + 1));
	 echo $tails
  fi
  if [ $heads -eq $tails ]
	then
	$tie=1
	fi
done
if [ $heads -gt $tails ]
then
        diff=$(( $heads - $tails ))

else
        diff=$(( $tails - $heads ))

fi

while [ $diff -lt 2 ]
do

        rand=$(( RANDOM % 2 ))

        if (( $rand == 1 ))
        then
                echo Heads
                heads=$(( $heads+1 ))
                echo $heads
        else
                echo Tails
                tails=$(( $tails+1 ))
                echo $tails
        fi
	diff=$((abs($heads-$tails)))

done
echo "Head"$heads
echo "Tails"$tails
echo "difference in count: "$diff
