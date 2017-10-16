echo "Enter a number"
read n
m=`expr $n \/ 2`
for i in $(seq 2 $m)
do
    mod=`expr $n % $i`
    if [ $mod -eq 0 ]
    then
        echo "$n is Not a Prime!"
        exit
    fi
done
echo "$n is a Prime!"
