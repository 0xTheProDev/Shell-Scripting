echo "Enter the number of terms"
read n
sum=0
echo "Enter $n numbers"
for i in $(seq 1 $n)
do
    read a
    arr[$i]=$a
    sum=`expr $sum + $a`
done
echo "Sum of all elements i array is: $sum"
