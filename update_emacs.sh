echo "== update SpaceEmacs =="
cd ~/.emacs.d
git pull --rebase
git submodule sync; git submodule update