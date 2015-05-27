## macport version
#sudo port selfupdate
#sudo port upgrade outdated
#sudo port uninstall inactive

#Homebrew

# upgrade neovim
# brew reinstall --HEAD https://raw.github.com/neovim/neovim/master/neovim.rb

# upgrade everything else
brew update && brew upgrade `brew outdated` --all
brew cleanup -

