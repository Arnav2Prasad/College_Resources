#!/bin/bash

echo "Enter numbers : "
read -a numbers

primes=()

for num in "${numbers[@]}"; do
    if (( num <= 1 )); then
        continue
    fi

    is_prime=1 
    if (( num == 2 )); then
        is_prime=1
    elif (( num % 2 == 0 )); then
        is_prime=0
    else
        max_divisor=$(echo "sqrt($num)" | bc)
        for (( i=3; i<=max_divisor; i+=2 )); do
            if (( num % i == 0 )); then
                is_prime=0
                break
            fi
        done
    fi

    if (( is_prime == 1 )); then
        primes+=("$num")
    fi
done


sorted_asc=$(printf "%s\n" "${primes[@]}" | sort -n)

sorted_desc=$(printf "%s\n" "${primes[@]}" | sort -nr)

echo "Prime numbers (ascending):"
echo "$sorted_asc"

echo "Prime numbers (descending):"
echo "$sorted_desc"

