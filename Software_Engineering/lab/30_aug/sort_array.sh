#!/bin/bash

#prime search

echo "Enter numbers separated by space :"
read -a numbers

echo "You entered: ${numbers[@]}"

sorted_asc=$(for num in "${numbers[@]}"; do echo "$num"; done | sort -n)
echo "Sorted in ascending order: $sorted_asc"

sorted_desc=$(for num in "${numbers[@]}"; do echo "$num"; done | sort -nr)
echo "Sorted in descending order: $sorted_desc"

