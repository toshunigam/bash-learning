#!/bin/sh
echo 'Type Y for continue N for exit'
read yesno
if [ $yesno == 'Y' ]
	then
		echo 'You choose continue ' $yesno
		exit 1
elif [ $yesno == 'N' ]
	then
		echo 'You choose exit ' $yesno
		exit 1
else
	echo 'Invalid input provided. script is exit.'
	exit 1
fi
