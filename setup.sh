#! /bin/bash


function echoCo {
    echo -e "\033[32m$@\033[0m"
}


function echoMe {
    echo -e "\033[35m$@\033[0m"
}


echoCo 'git pull'
        git pull


echoCo 'git submodule init'
        git submodule init


echoCo 'git submodule update'
        git submodule update


echoCo 'cd ~/.vim'
        cd ~/.vim


echoCo 'cp .vimrc ~/.vimrc'
        cp .vimrc ~/.vimrc


echoCo 'vim +PluginInstall +qall'
        vim +PluginInstall +qall
