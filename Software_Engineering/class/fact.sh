#!/bin/bash


echo "Enter a number:"
read number

ans=1

for (( i=1 ; i<=number;i++ ))
	do
	ans=$((ans * i))
	done


echo "answer is $ans"
