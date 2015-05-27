# update all github projects
#!/bin/zsh

#echo === upgrading all git repositores ===
for dir in /Applications/*/
do
	dir=${dir%*/}
	echo -- signing ${dir} -- 
	sudo codesign --force --sign - /Applications/${dir}
done

for dir in /opt/homebrew-cask/Caskroom/*/
do
	dir=${dir%*/}
	echo -- signing ${dir} -- 
	sudo codesign --force --sign - /opt/homebrew-cask/Caskroom/${dir}
done