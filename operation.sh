#!/bin/bash

#算术运算符
#`expr $a + $b`//表达式之间必须有空格
#`expr $a - $b`
#`expr $a \* $b`
#`expr $a / $b`
#`expr $a % $b`
#[ $a == $b ]//条件表达式必须放在方括号里 并且'['和表达式之间要有空格

#关系运算符
#-eq 检测两个数是否相等，相等返回true
#-ne 检测两个数是否相等，不相等返回true
#-gt 检测左边的数是否大于右边的，大于返回true,否则返回false
#-lt 检测左边的数是否小于右边的，小于返回true，否则返回false
#-ge 检测左边的数是否大于或等于右边的
#-le 检测左边的数是否大于或等于右边的

#bool运算符
#! 非运算
#-o 或运算
#-a 与运算

#逻辑运算符
#&& 逻辑的and
#|| 逻辑的or

#字符串运算符
#= 检测两个字符串是否相等，相等返回true
#!=
#-z 检测字符串的长度是否为零，为零返回true
#-n 检测字符串长度是否不为零
#str 检测字符串是否为空，不为空返回true

#文件测试运算符
#-b 文件是否是块文件
#-c 文件是否是字符文件
#-d 文件是否是目录
#-f 是否普通文件
#-g 文件是否设置了SGID位
#-k 文件是否设置了粘着位(Sticky Bit)
#-p 文件是否是有名管道
#-u 文件是否设置了SUID位
#-r 文件是否可读
#-w 文件是否可写
#-x 文件是否可执行
#-s 文件是否为空(文件的大小是否大于0)
#-e 检测文件是否存在

#SUID 当设置了SUID位的文件被执行时，该文件以所有者的身份运行，也就是说，无论谁来执行这个文件，他都有文件所有者的特权
#SGID 一个目录被标上setgid位，此目录下创建的文件继承该目录的属性。文件运行时，运行者将具有所属组的特权
#sticky-bit 该位可以理解为防删除位。设置后，就算用户对目录有写权限，但也只能添加文件而不能删除其他用户创建的文件。

a=10
b=20

echo "-------------------------------算术运算符----------------------------------"

echo "a=$a, b=$b"
val=`expr $a + $b`
echo "a + b : $val"

val=`expr $a - $b`
echo "a - b : $val"

val=`expr $a \* $b`
echo "a * b : $val"

val=`expr $a / $b`
echo "a / b : $val"

if [ $a == $b ]
then
    echo "a=b"
elif [ $a != $b ]
then
    echo "a!=b"
fi

echo "-------------------------------关系运算符----------------------------------"

if [ $a -eq $b ]
then
    echo "a=b"
else
    echo "a!=b"
fi

if [ $a -ne $b ]
then
    echo "a!=b"
else
    echo "a=b"
fi

if [ $a -gt $b ]
then
    echo "a>b"
else
    echo "a<b"
fi

if [ $a -lt $b ]
then
    echo "a<b"
else
    echo "a>b"
fi

if [ $a -ge $b ]
then
    echo "a>=b"
else
    echo "a<b"
fi

if [ $a -le $b ]
then
    echo "a<=b"
else
    echo "a>b"
fi

echo "-------------------------------布尔运算符----------------------------------"

if ! [ $a -eq 10 ] 
then
    echo "impossible"
else
    echo "false"
fi

if [ $a -gt 0 -a $a -lt 10 ]
then
    echo "0<a<10"
fi
if [ $b -gt 100 -o $b -lt 50 ]
then
    echo "b>100或者b<50"
fi

echo "-------------------------------逻辑运算符----------------------------------"

if [[ $a -gt 0 && a -le 10 ]]
then
    echo "0<a<10"
fi

echo "-------------------------------字符串运算符--------------------------------"

str1='abc'
str2='efg'
echo "str1=$str1, str2=$str2"

if [ $str1 = $str2 ]
then
    echo "str1=str2"
else
    echo "str1!=str2"
fi

if [ -z $str1 ]
then
    echo "the len of str1 is 0"
else
    echo "the len of str1 is not 0"
fi

if [ -n $str2 ]
then
    echo "the len of str2 is not 0"
fi

echo "-------------------------------文件测试运算符------------------------------"

file="/home/yuhao/shell/operation.sh"

if [ -e $file ]
then
    echo "file is $file"
fi

if [ -r $file ]
then 
    echo "file is readable"
fi

if [ -w $file ]
then
    echo "file is writable"
fi

if [ -x $file ]
then
    echo "file is executable"
fi


