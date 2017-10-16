echo "Enter the number of terms"
read n
for i in $(seq 1 $n)
do
    read a
    arr[$i]=$a
done
for i in $(seq 1 $n)
do
    t=`expr $n - $i`
    for j in $(seq 1 $t)
    do
        k=`expr $j + 1`
        if [ ${arr[$k]} -lt ${arr[$j]} ]
        then
            temp=${arr[$k]}
            arr[$k]=${arr[$j]}
            arr[$j]=$temp
        fi
    done
done
for i in $(seq 1 $n)
do
    echo "${arr[$i]} "
done
