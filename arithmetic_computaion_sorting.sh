#!/bin/bash -x
echo "This problem computes different arithmetic expressions and Sorts the results"
read -p "Enter 1st No. a :- " a
read -p "Enter 2nd No. b :- " b
read -p "Enter 3rd No. c :- " c
result1=$(($a+$b*$c))
echo "$result1"
