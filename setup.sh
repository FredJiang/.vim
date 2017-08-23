#! /bin/bash

echo 'cd ~/.vim'
cd ~/.vim


echo 'git submodule init'
git submodule init


echo 'git submodule update'
git submodule update


echo 'cp .vimrc ~/.vimrc'
cp .vimrc ~/.vimrc