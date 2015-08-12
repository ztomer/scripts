echo "##############################"
echo "#  Full System Upgrade       #"
echo "##############################"

# python module update
sudo -H python3 ~/bin/pip3_upgrade.py

# apple store update
sudo softwareupdate -i -a

# homebrew update
~/bin/brew_update.sh

# update all git repositories
~/bin/update_git.sh

# update emacs
~/bin/update_emacs.sh

# back up configuration
~/bin/back_cfg.sh


echo "##############################"
echo "#  DONE                      #"
echo "##############################"
