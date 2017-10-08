for i in $(seq 1 1000)
do
        arr[$i]=0
done
for i in $(seq 1 10)
do
        read a;
        b=${arr[$a]}
        arr[$a]=`expr $b + 1`
done
for i in $(seq 1 1000)
do
        b=${arr[$i]}
        if [ $b -ne 0 ]
        then
                echo "$i occured $b times."
        fi
done
