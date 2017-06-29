#!/bin/bash
#执行shell脚本时可以向脚本传递参数，脚本内获取参数的格式为：$n。n是一个数字，代表传递给脚本的第n个参数

echo "本文件是$0"
echo "传来的第一个参数是$1"
echo "传来的第二个参数是$2"
echo "传来的第三个参数是$3"
echo "传来的第四个参数是$4"

#  $# 表示传递到脚本参数的个数
#  $* 以一个单字符串显示所有向脚本传递的参数
#  $$ 脚本运行的当前进程ID号
#  $! 后台运行的最后一个进程的ID号
#  $@ 与$*类似
#  $- 显示shell使用的当前选项
#  $? 显示最后命令的退出状态。0表示没有错误，其他任何值表示有错误

echo "传进来的参数的个数为：$#"
echo "该脚本进程的ID号是：$$"
echo "该脚本使用的当前选项是：$-"

#  $@和$*的区别

echo '$*'
for i in "$*";do
    echo "$i"
done

echo '$@'
for i in "$@";do
    echo "$i"
done
