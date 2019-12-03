#!/bin/sh 

#处理文件格式
find ./ -iname "*.c" -o -iname "*.h" -o -iname "*.cpp" | xargs astyle --style=ansi -n -S

#静态分析
cppcheck --force --enable=warning ./  1>/dev/null 

