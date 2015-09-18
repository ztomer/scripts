# backup homebrew and homebrew cask install list to google drive
#!/bin/zsh
GOOGLE_DRIVE=~/Documents_GD/dotfiles
echo "== Backing up configurations =="
brew list > ${GOOGLE_DRIVE}/brew_list.txt
brew cask list > ${GOOGLE_DRIVE}/brew_cask.txt
pip3 list > ${GOOGLE_DRIVE}/pip3_list.txt
pip2 list > ${GOOGLE_DRIVE}/pip2_list.txt 
cp ~/.hammerspoon/init.lua ${GOOGLE_DRIVE}/hs_init.lua
cp ~/.zshrc ${GOOGLE_DRIVE}/.zshrc
cp ~/.spacemacs ${GOOGLE_DRIVE}/.spacemacs
cp ~/bin/* ${GOOGLE_DRIVE}/bin/
cp ~/.zshrc ${GOOGLE_DRIVE}/bin/
