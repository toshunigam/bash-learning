#!/bin/sh
PROJECT_DIR='/var/www/html/client_panel_react'
PROJECT_BACKUP='/home/ec2-user'

echo 'Type Y for continue N for exit'
read yesno
if [ $yesno == 'Y' ]
	then
		echo 'Backup of file is started...'
		cp -r $PROJECT_DIR $PROJECT_BACKUP`date +'%Y%m%d_%H%M%S'`
		echo 'Successfully backeuped files.'
		cd $PROJECT_DIR
		echo 'removing node_modules and package-lock files'
		#git pull origin main
		rm -rf node_modules
		rm -r package-lock.json
		echo 'installing project...'
		npm install
		echo 'package installed'
		cp .env.staging .env
		echo 'generating build, it may take few minutes....'
		npm run build
		echo 'build is created.'
		echo 'restarting webserver.....'
		service httpd restart
		echo 'service started successfully'
		echo 'exit'
elif [ $yesno == 'N' ]
	then
		echo 'You choose exit ' $yesno
else
	echo 'Invalid input provided. script is exit.'
fi

