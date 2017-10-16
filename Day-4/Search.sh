echo "Enter the number of terms"
read n
echo "Enter $n terms"
for i in $(seq 1 $n)
do
    read a
    arr[$i]=$a
done
echo "Enter the term you want to search"
read key
for i in $(seq 1 $n)
do
    if [ ${arr[$i]} -eq $key ]
    then
        echo "$key occurs at $i position"
        exit
    fi
done
echo "$key does not occur in the list"
