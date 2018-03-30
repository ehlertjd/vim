ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
mkdir -p backup
git submodule init
git submodule update
vim +BundleInstall +qall
cd ~/.vim/bundle/YouCompleteMe
./install.sh --go-completer
cd ~/.vim/bundle/tern_for_vim
npm install

