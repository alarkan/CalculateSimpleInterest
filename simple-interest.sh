#!/bin/bash

# Function to calculate simple interest
calculate_simple_interest() {
    local principal=$1
    local rate=$2
    local time=$3
    local interest

    interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
    echo "The simple interest is: $interest"
}

# Read principal amount
read -p "Enter the principal amount: " principal

# Read rate of interest
read -p "Enter the rate of interest: " rate

# Read time in years
read -p "Enter the time (in years): " time

# Validate inputs
if [[ ! $principal =~ ^[0-9]+(\.[0-9]+)?$ ]] || [[ ! $rate =~ ^[0-9]+(\.[0-9]+)?$ ]] || [[ ! $time =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Invalid input. Please enter numeric values."
    exit 1
fi

# Calculate and display the simple interest
calculate_simple_interest $principal $rate $time
