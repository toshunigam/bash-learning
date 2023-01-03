#!/bin/sh
file1='cicd_3.sh'
file2='cicd_test.sh'
if [ -e $file1 ]
then 
	echo $file1 " file is exist"
else
	echo $file1  'NO file is exist'
fi

if [ -e $file2 ]
then 
	echo $file2 'file is exist'
else
	echo $file2 ' file Not is exist'
fi
