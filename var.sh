#!/bin/bash

#变量名和等号之间不能有空格。首个字符必须为字母；中间不能有空格，可以使用下划线；不能使用标点符号；不能使用bash里的关键字
myname="yuhao"
echo "myname is $myname"

#还可以用语句给变量赋值
for file in `ls /etc`; do
    echo "/etc has file: $file"
done

#使用readonly命令可以将变量定义为只读变量
readonly myname

#删除变量，变量被删除后不能再次使用。unset不能删除只读变量。
var=1
unset var

#shell字符串
#字符串可以用单引号也可以用双引号
#单引号里的任何字符都会原样输出，单引号里的变量是无效的；
#双引号里可以用变量和转义字符；
str1='myname is \"$myname\"'
echo $str1
str2="myname is \"$myname\""
echo $str2

#拼接字符串
unset str1 
unset str2
str1='yu'
str2='hao'
echo $str1$str2

#获取字符串长度
echo "the len of str1 is ${#str1}"

#截取字符串。从第一个字符往后截取8个字符
string='my name is yuhao'
echo ${string:1:8}

#查找子字符串
echo `expr index "$string" is`

#shell数组 bash只支持一维数组，并且没有限定数组的大小。数组元素的下标从0开始
#定义数组
array_name=(value0 value1 value2 value3)
#或者
array_name[0]=value0
array_name[1]=value1
array_name[2]=value2
array_name[3]=value3
#可以使用不连续的下标，且下标的范围没有限制

#读取数组元素值的一般格式是：${数组名[下标]}
#使用@符号可以获取数组中的所有元素
echo "array_name包含的元素有：${array_name[@]}"

#取得数组元素的个数
length=${#array_name[@]}
#或者
length=${#array_name[*]}

#获取数组单个元素的长度
length_num2=${#array_name[2]}

