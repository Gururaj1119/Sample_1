#!/bin/bash
sumar="10 25 36 78 96"
summ=0
echo "The array elements are"
for i in $sumar
do
	echo $i
	summ=`expr $summ + $i`
done
echo "The sum of above array elements is $summ"
