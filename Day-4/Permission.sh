echo "Enter a file name"
read file
size=$(ls -l $file | cut -f5 -d' ')
if ! [ $size -eq 0 ]
then
    echo "The file $file is not empty, giving Read permission to all"
    chmod 444 $file
fi
