list1=$(ls -l | tr -s ' ' | cut -f 1,9 -d ' ')
echo "Solution1: $list1"
list2=$(ls -l | grep '^d' | tr -s ' ' | cut -f 1,9 -d ' ')
echo "Solution2: $list2"
count=$(ls -l | grep -v '^d' | cut -f 2- -d $'\n' | wc | cut -f 7 -d ' ')
echo "Solution5: $count"
dic=$(diff Programs/SWR/src/main.c Programs/SWR/lib/helper.c | wc | cut -f 6 -d ' ')
echo "Solution7: $dic"
