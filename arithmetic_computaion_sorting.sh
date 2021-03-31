#!/bin/bash -x
declare -A computation
declare -a array1
echo "This problem computes different arithmetic expressions and Sorts the results"
read -p "Enter 1st No. a :- " a
read -p "Enter 2nd No. b :- " b
read -p "Enter 3rd No. c :- " c

result1=$(($a+$b*$c))
computation[0]="$result1"

result2=$(($a*$b+$c))
computation[1]="$result2"

result3=$(($c+$a/$b))
computation[2]="$result3"

result4=$(($a%$b+$c))
computation[3]="$result4"

echo "(a+b*c)=${computation[0]}"
echo "(a*b+c)=${computation[1]}"
echo "(c+a/b)=${computation[2]}"
echo "(a%b+c)=${computation[3]}"

array1=( [0]=$result1 [1]=$result2 [2]=$result3 [3]=$result4 )
echo ${array1[@]}
