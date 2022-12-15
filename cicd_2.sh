#!/bin/sh
echo 'Type Y for continue N for exit'
read yesno
if [ $yesno == 'Y' ]
	then
		echo 'You choose continue ' $yesno
elif [ $yesno == 'N' ]
	then
		echo 'You choose exit ' $yesno
else
	echo 'Invalid input provided. script is exit.'
fi
