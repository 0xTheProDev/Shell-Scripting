file="test.sh"
if ! [ -f $file ]
then
    touch $file
    echo "Created file $file"
    echo "Enter the number of lines you want to add"
    read n
    for i in $(seq 1 $n)
    do
        read text
        echo $text >> $file
    done
else
    echo "File already exists"
fi
