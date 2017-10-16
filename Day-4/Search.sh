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
index=-1
for i in $(seq 1 $n)
do
    if [ ${arr[$i]} -eq $key ]
    then
        index=$i
        break
    fi
done
echo "$key occurs at $index position"
