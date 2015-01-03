echo "##############################"
echo "#  Full System Upgrade       #"
echo "##############################"

# python module update
sudo python3 ~/bin/pip_upgrade.py

# apple store update
sudo softwareupdate -i -a

# macports update
~/bin/mp_update.sh

# update all git repositories
~/bin/update_git.sh

echo "== update SpaceEmacs =="
cd ~/.emacs.d
git pull --rebase
git submodule sync; git submodule update

# backup homebrew and homebrew cask install list to google drive
echo "== Backing up configurations =="
brew list > ~/Documents_GD/Documents/Computing\ notes/brew_list.txt
brew cask list > ~/Documents_GD/Documents/Computing\ notes/brew_cask.txt
cp ~/.mjolnir/init.lua ~/Documents_GD/Documents/Computing\ notes/mjolnir_init.lua
cp ~/.hammerspoon/init.lua ~/Documents_GD/Documents/Computing\ notes/hs_init.lua
cp ~/bin/* ~/Documents_GD/Documents/Computing\ notes/bin/


echo "##############################"
echo "#  DONE                      #"
echo "##############################"