echo "Enter an integer"
read n
fact=1
for i in $(seq 1 $n)
do
    fact=`expr $fact \* $i`
done
echo "Factorial of $n is $fact"
