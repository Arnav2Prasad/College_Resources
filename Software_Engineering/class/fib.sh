#!/bin/bash

echo "Enter number : "
read num

a=0
b=1

for ((i=1; i<=num; i++))
	do 
		echo $a
		temp=$a
		a=$b
		b=$((a + temp))
	done
