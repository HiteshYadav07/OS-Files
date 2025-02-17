#!/bin/bash

# Read a number from the user
read -p "Enter a number (1-7): " num

# Check the number and print the corresponding day
case $num in
    1) echo "Sunday" ;;
    2) echo "Monday" ;;
    3) echo "Tuesday" ;;
    4) echo "Wednesday" ;;
    5) echo "Thursday" ;;
    6) echo "Friday" ;;
    7) echo "Saturday" ;;
    *) echo "Invalid input! Please enter a number between 1 and 7." ;;
esac

