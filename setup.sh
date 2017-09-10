#! /bin/bash


echo 'git pull'
git pull



echo 'git submodule init'
git submodule init



echo 'git submodule update'
git submodule update



echo 'cd ~/.vim'
cd ~/.vim




echo 'cp .vimrc ~/.vimrc'
cp .vimrc ~/.vimrc

vim +PluginInstall +qall
