# Clean up all git repositories
#!/bin/zsh

#echo === Garbage collection on all git repositores ===
for dir in /Users/ztomer/Projects/Github/*/
do
	dir=${dir%*/}
	echo -- Garbage collecting ${dir} -- 
	cd ${dir}
	git gc --aggressive
	cd ..
done