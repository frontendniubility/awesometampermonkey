#!/bin/bash
 
 

read -p 'commiting message >' -t 5 -n 50
if [ $ = 0 ] ; then
	$="auto-commit for synchronizing"
else
echo "$"
fi
 
git pull
git add *
git add -A
git commit -m "$?"
git push -u origin master
 
 
 read 