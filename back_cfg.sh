# backup homebrew and homebrew cask install list to google drive
echo "== Backing up configurations =="
brew list > ~/Documents_GD/Documents/Computing\ notes/brew_list.txt
brew cask list > ~/Documents_GD/Documents/Computing\ notes/brew_cask.txt
pip3.4 list > ~/Documents_GD/Documents/Computing\ notes/pip_list.txt
cp ~/.hammerspoon/init.lua ~/Documents_GD/Documents/Computing\ notes/hs_init.lua
cp ~/.zshrc ~/Documents_GD/Documents/Computing\ notes/.zshrc
cp ~/.spacemacs ~/Documents_GD/Documents/Computing\ notes/.spacemacs
cp ~/bin/* ~/Documents_GD/Documents/Computing\ notes/bin/
cp ~/.zshrc ~/Documents_GD/Documents/Computing\ notes/bin/
