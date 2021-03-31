
declare -A computation
declare -a array1
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

array1=( [0]=$result1 [1]=$result2 [2]=$result3 [3]=$result4 )
res=`echo ${array1[@]} | sort -nr `
echo "$res"

for (( i=0;i<4;i++ ))
do
   for(( j=0;j<3;j++ ))
   do
      if [ ${array1[$j]} -gt ${array1[$(($j+1))]} ]
      then
         temp=${array1[$j]}
         array1[$j]=${array1[$(($j+1))]}
         array1[$(($j+1))]=$temp
      fi
   done
done
echo "Array after sorting in Descending order"
for (( i=3;i>=0;i-- ))
do
   echo "${array1[i]}"
done

echo "Array after sorting in Ascending order"
for (( i=0;i<4;i++ ))
do
   echo "${array1[i]}"
done
