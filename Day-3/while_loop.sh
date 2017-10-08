echo "Enter the number of terms"
read n
i=0
min=0
max=0
sum=0
while [ $i -lt $n ]
    do
        read a
        if [ $i -eq 0 ]
        then
            min=$a
            max=$a
        elif [ $max -lt $a ]
        then
            max=$a
        elif [ $min -gt $a ]
        then
            min=$a
        fi
        sum=`expr $sum + $a`
        i=`expr $i + 1`
    done
avg=`expr $sum \/ $n`
echo "Average: $avg  Minimum: $min  Maximum: $max"
