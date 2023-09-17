#!/bin/bash
# declare STRING variable
STRING="Hello World"
# print variable on a screen
echo $STRING
pwd
ls -la
echo '---------------------------------------------------------------------'
echo '---------------------------------------------------------------------'
var=`expr 2 + 2`
var1=`expr $var - 1`
var2=`expr $var1 + $var`
echo "calculated value IS: $var2"