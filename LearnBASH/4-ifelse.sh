#!/bin/sh
echo "Enter one number : "
read num1

if [ $num1 -le 9 ]
then
        echo "Its one digit number."
elif [[ $num1 -gt 9 && $num1 -le 99 ]]
then
        echo "Its 2 digit number."
else
        echo "Its more than 2 digit number."
fi