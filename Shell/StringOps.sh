#!/bin/bash
echo "String Operations"
i="y"
echo "enter first string"
read s1
echo "enter second string"
read s2
while [ $i = "y" ]
do
echo "1.Compare strings"
echo "2.Check if strings are equal"
echo "3.Check if strings are empty or not"
echo "4.Concat"
echo "5.Length of first string" 
echo "6.Length of second string"
echo "7.Reverse first string"
echo "8.Reverse Second string"
echo "Enter choice"
read ch
case $ch in

1)if [ $s1 \> $s2 ] 
then 
  echo "$s2 is greater then $s1" 
else
  echo "$s1 is less then $s2" 
fi ;;
2)if [ $s1 = $s2 ]
then 
  echo "Both string are same"
else
  echo "Both string are not same"
fi ;;
3)if [ -n $s1 ] 
then 
  echo "String is not empty" 
else
  echo "String is empty"
fi ;;
4)c="${s1} ${s2}"
echo "${c}";;
5)echo ${#s1};;
6)echo ${#s2};;
7)echo ${s1}| rev;;
8)echo ${s2}| rev;;
*)echo "invalid choice"
esac
echo "Do you want to continue"
read i
if [ $i != "y" ]
then
exit
fi
done
