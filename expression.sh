#!/bin/bash
read -p "enter the number for looping: " number
counter=0
for (( i=1;i<=$number;i++ ))
do
        x=$i;
        y=$(( $i+1 ))
        if [ $(( $x+$y )) -le 10 ]
        then
                echo "output: " $x "+" $y "=" $(( $x+$y ));
                ((counter++))
        else
                continue
        fi
done

while [ $counter -ne $number ]
do
                x=$(( RANDOM%10 ));
                y=$(( RANDOM%10 ));

                if [ $(( $x+$y )) -le 10 ]
                then
                        echo "output: " $x "+" $y "=" $(( $x+$y ));
                        ((counter++))
                else
                        continue;
                fi
done

