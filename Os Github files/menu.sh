#!/bin/bash

echo "SELECT:"
echo "1. List of files"
echo "2. Process state"
echo "3. Date"
echo "4. User in program"
echo "5. Quit"
echo -n "Enter your menu choice [1-5]: "

while :
do
  read choice
  case $choice in
    1)  
      echo "You have selected option 1"
      echo "List of files:"
      ls ;;
    2)  
      echo "You have selected option 2"
      echo "Process state:"
      ps ;;
    3)  
      echo "You have selected option 3"
      echo "Date:"
      date ;;
    4)  
      echo "You have selected option 4"
      echo "User in program:"
      whoami ;;
    5)  
      echo "You have selected option 5"
      echo "Quitting..."
      exit 0 ;;
    *)  
      echo "Invalid option. Please select a valid option." ;;
  esac
  echo -n "Enter your menu choice [1-5]: "
done
