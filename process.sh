#!/bin/bash
a=1
if test $a == 1
then
    echo 'a=1'
fi

for i in `ls ./`
do
    printf "%s  " $i
done
echo

echo -n '输入:'
while read film
do
    if test $film == "stop"
    then
        break
    fi
        echo "输出:$film"
        echo -n '输入:'
done

until test $a -gt 10
do
    let "a++"
    echo $a
done


echo -n '1-4选一个:'
read num
case $num in
    1)
        echo '选了1'
        ;;
    2)
        echo '选了2'
        ;;
    3)
        echo '选了3'
        ;;
    4)
        echo '选了4'
        ;;
    *)
        echo '1-4选一个'
        ;;
esac
