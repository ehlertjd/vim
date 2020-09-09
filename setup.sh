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
