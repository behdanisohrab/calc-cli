#!/bin/bash

# Function to perform addition
function add() {
  echo "Enter two numbers: "
  read num1
  read num2
  sum=$((num1 + num2))
  echo "The sum of $num1 and $num2 is: $sum"
}

# Function to perform subtraction
function subtract() {
  echo "Enter two numbers: "
  read num1
  read num2
  diff=$((num1 - num2))
  echo "The difference between $num1 and $num2 is: $diff"
}

# Function to perform multiplication
function multiply() {
  echo "Enter two numbers: "
  read num1
  read num2
  product=$((num1 * num2))
  echo "The product of $num1 and $num2 is: $product"
}

# Function to perform division
function divide() {
  echo "Enter two numbers: "
  read num1
  read num2
  quotient=$(awk "BEGIN {printf \"%.2f\", $num1 / $num2}")
  echo "The quotient of $num1 and $num2 is: $quotient"
}

# Main program loop
while true; do
  echo ""
  echo "Select operation:"
  echo "1. Add"
  echo "2. Subtract"
  echo "3. Multiply"
  echo "4. Divide"
  echo "5. Exit"

  read choice

  case $choice in
    1) add ;;
    2) subtract ;;
    3) multiply ;;
    4) divide ;;
    5) exit ;;
    *) echo "Invalid input. Please try again." ;;
  esac
done
