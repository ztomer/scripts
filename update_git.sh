# update all github projects
#!/bin/zsh

#echo === upgrading all git repositores ===
for dir in /Users/ztomer/Projects/Github/*/
do
	dir=${dir%*/}
	echo -- upgrading ${dir} -- 
	cd ${dir}
	git pull
	cd ..
done