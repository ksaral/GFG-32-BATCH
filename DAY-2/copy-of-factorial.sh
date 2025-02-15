#!/bin/bash

# Function to calculate factorial with parameter
factorial() {
    local num=$1
    local fact=1

    # Check if the input is a non-negative number
    if [ "$num" -lt 0 ]; then
        echo "Factorial is not defined for negative numbers!"
        exit 1
    fi

    # Calculate factorial using a loop
    for (( i=1; i<=num; i++ ))
    do
        fact=$((fact * i))
    done

    echo "$fact"
}

# Check if a parameter is provided
if [ -z "$1" ]; then
    read -p "Enter a number: " num
else
    num=$1
fi

# Call the factorial function with parameter
result=$(factorial "$num")
echo "Factorial of $num is: $result"
