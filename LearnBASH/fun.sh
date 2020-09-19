#!/bin/bash
add(){
expr $1 + $2
}
sub() {
expr $1 - $2
}
echo "Enter first number : \n"
read num1
echo "Enter second number : \n"
read num2

add $num1 $num2
sub $num1 $num2