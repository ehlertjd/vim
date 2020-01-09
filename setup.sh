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

if [ ! -d ~/.vim/plugged/YouCompleteMe ]; then
    echo installing YouCompleteMe
    git clone https://github.com/ycm-core/YouCompleteMe.git ~/.vim/plugged/YouCompleteMe
    cd ~/.vim/plugged/YouCompleteMe
    git submodule update --init --recursive
    cd -
fi

ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
mkdir -p backup
mkdir -p plugged
mkdir -p autoload
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall
cd ~/.vim/plugged/YouCompleteMe
./install.sh --go-completer
cd ~/.vim/plugged/tern_for_vim
npm install

