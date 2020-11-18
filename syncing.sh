#!/bin/bash
 
echo  "key in commiting message，default's ‘Just auto-commit for synchronizing workspace’"

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
