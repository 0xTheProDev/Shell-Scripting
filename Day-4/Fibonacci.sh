echo "Enter the number of terms"
read n
arr[1]=3
arr[2]=5
for i in $(seq 3 $n)
do
    j=`expr $i - 1`
    k=`expr $i - 2`
    arr[$i]=`expr ${arr[$j]} + ${arr[$k]}`
done
for i in $(seq 1 $n)
do
    echo ${arr[$i]}
done
