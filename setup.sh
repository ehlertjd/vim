ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule init
git submodule update
vim +BundleInstall +qall
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer

