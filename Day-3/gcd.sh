echo "Enter two numbers:"
read c
read d
a=$c
b=$d
while [ $a -ne $b ]
do
        if [ $a -gt $b ]
        then
                a=`expr $a - $b`
        else
                b=`expr $b - $a`
        fi
done
echo "GCD of $c and $d is $a"
