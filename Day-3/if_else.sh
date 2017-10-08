echo "Enter three numbers:"
read a
read b
read c

min=0
max=0

if [ $a -gt $b ]
then 
        max=$a
        min=$b
else
        max=$b
        min=$a
fi
if [ $c -gt $max ]
then 
        max=$c
elif [ $c -lt $min ]
then
        min=$c
fi
echo "Maximum $max Minimum $min"
