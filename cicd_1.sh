#!/bin/sh
PROJECT_DIR='E:\my-projects\nodelargefileupload'
PROJECT_BACKUP='E:\my-projects\backup\backup_'

echo 'Backup of file is started...'
cp -r $PROJECT_DIR $PROJECT_BACKUP`date +'%Y%m%d_%H%M%S'`
echo 'Successfully backeuped files.'
cd $PROJECT_DIR
echo 'removing node_modules and package-lock files'
rm -rf node_modules
rm -r package-lock.json
echo 'installing project...'
npm install
echo 'package installed'