#!/bin/bash
 
 if read -t 5 -p "输入网站名:" website
then
    echo "你输入的网站名是 $website"
else
    echo "\n抱歉，你输入超时了。"
fi 
 
sleep 20
 
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
