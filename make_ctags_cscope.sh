#!/bin/sh 
/usr/bin/ctags --sort=foldcase -R  
find  -L ./ -name "*.h" -o -name "*.c" > cscope.files
cscope -bkq
