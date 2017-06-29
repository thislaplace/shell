#!/bin/bash
foo(){
    echo "第一个参数是:$1"
    echo "一共有参数$#个"
}
foo 1 2 3
