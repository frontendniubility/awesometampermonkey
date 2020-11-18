
read -r -p "Wait 5 seconds or press any key to continue immediately" -t 5 -n 1 -s


echo -n "输入提交介绍，默认为‘Just auto-commit for synchronizing workspace’ ->"
read msg 
 if [ -z "$msg" ]; then
     echo "committing as comment 'auto-commit for synchronizing'"
	 msg="auto-commit for synchronizing"
 fi
git pull
git add *
git add -A
git commit -m "$msg"
git push -u origin master

pause
