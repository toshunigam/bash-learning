#!/bin/sh
echo '***********************************************************************************'
echo '*********************** Client Project CICD is Started ****************************'
echo '***********************************************************************************'
REDBOLD='\033[0;31;1m'
GREENBOLD='\033[0;32;1m'
PROJECT_DIR='/var/www/html/client_panel_react'
PROJECT_BACKUP='/home/ec2-user'
#PROJECT_DIR='E:/github/bash-learning/client_panel_react'
#PROJECT_BACKUP='E:/my-projects/averty/lab/backup/bu'
#git clone https://github.com/averti-system/client_panel_react.git
echo 'Type Y for continue N for exit'
read yesno
if [ $yesno == 'Y' ]
	then
		echo -e "${GREENBOLD} Backup of file is started..."
		cp -r $PROJECT_DIR $PROJECT_BACKUP`date +'%Y%m%d_%H%M%S'`
		echo -e "${GREENBOLD} Successfully backeuped files."
		cd $PROJECT_DIR
		git pull origin main
		#echo -e "${GREENBOLD} removing node_modules and package-lock files"
		#rm -rf node_modules
		#rm -r package-lock.json
		#echo -e "${REDBOLD} installing project it may takes few minutes please wait..."
		#npm install
		#echo -e "${GREENBOLD} package installed"
		cp .env-staging .env
		echo -e "${REDBOLD} generating build, it may take few minutes...."
		npm run build
		echo -e "${GREENBOLD} build is created."
		echo -e "${REDBOLD} restarting webserver....."
		service httpd restart
		echo -e "${GREENBOLD} service started successfully"
		echo 'exit'
		exit 1
elif [ $yesno == 'N' ]
	then
		echo 'You choose exit ' $yesno
		exit 1
else
	echo -e "${REDBOLD} Invalid input provided. script is exit."
	exit 1
fi

