#!/bin/bash
 
echo -n "输入提交介绍，默认为‘Just auto-commit for synchronizing workspace’ ->"

read -t 5 -n 50
if [ $? = 0 ] ; then
	$?="auto-commit for synchronizing"
else
echo "waiting for the keypress"
fi
 
git pull
git add *
git add -A
git commit -m "$?"
git push -u origin master

pause
