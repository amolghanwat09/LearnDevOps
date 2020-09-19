#!/bin/sh
num1=10
num2=5
num3=`expr $num1 + $num2`
echo $num3

num4=`expr $num1 - $num2`
echo $num4

num5=`expr $num1 / $num2`
echo $num5

num6=`expr $num1 \* $num2`
echo $num6

num7=`expr $num1 % $num2`
echo $num7