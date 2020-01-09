#!/usr/bin/env bash
# Prereqs


if [ ! -x  "$(command -v go)" ]; then 
    echo you might want to install golang
fi
     
if [ ! -x  "$(command -v npm)" ]; then 
    echo you will need npm
    exit 1
fi
     
 if [ ! -x  "$(command -v apt-vim)" ]; then 
    echo Installing apt-vim; 
    curl -sL https://raw.githubusercontent.com/egalpin/apt-vim/master/install.sh | sh; 
 fi;
 
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
mkdir -p backup
mkdir -p plugged
mkdir -p autoload
mkdir -p colors
mkdir -p swapfiles
mkdir -p scripts
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall
cd -
cd ~/.vim/plugged/YouCompleteMe
./install.sh --go-completer
cd -
cd ~/.vim/plugged/tern_for_vim
npm install
cd -
curl -fLo ~/.vim/colors/srcery.vim https://raw.githubusercontent.com/srcery-colors/srcery-vim/master/colors/srcery.vim 
cp ./scripts ~/.vim/scripts

