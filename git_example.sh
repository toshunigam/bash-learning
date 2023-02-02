#!/bin/sh
echo '***********************************************************************************'
echo '*********************** Client Project CICD is Started ****************************'
echo '***********************************************************************************'
cd /e/my-projects/backup
git clone https://github.com/averti-system/client_panel_react.git
echo 'clone is successfull'
cd client_panel_react
echo 'npm install is started'
npm install
echo 'package is installed'
exit 1