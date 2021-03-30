
declare -A computation
echo "This problem computes different arithmetic expressions and Sorts the results"
read -p "Enter 1st No. a :- " a
read -p "Enter 2nd No. b :- " b
read -p "Enter 3rd No. c :- " c

result1=$(($a+$b*$c))
computation[a+b*c]="$result1"

result2=$(($a*$b+$c))
computation[a*b+c]="$result2"

result3=$(($c+$a/$b))
computation[c+a/b]="$result3"

result4=$(($a%$b+$c))
computation[a%b+c]="$result4"

echo "(a+b*c)=${computation[a+b*c]}"
echo "(a*b+c)=${computation[a*b+c]}"
echo "(c+a/b)=${computation[c+a/b]}"
echo "(a%b+c)=${computation[a%b+c]}"
