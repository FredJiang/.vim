#! /bin/bash


function echoCo {
    echo -e "\033[32m$@\033[0m"
}


function echoMe {
    echo -e "\033[35m$@\033[0m"
}


function echoWa {
    echo -e "\033[33m$@\033[0m"
}


function echoEr {
    echo -e "\033[31m$@\033[0m"
}


case "$OSTYPE" in
  solaris*)
    echoMe "SOLARIS"
    ;;
  darwin*)
    echoMe "OSX"
    ;; 
  linux*)
    echoMe "LINUX"
    ;;
  bsd*) 
    echoMe "BSD"
    ;;
  msys*) 
    echoMe "WINDOWS"
     ;;
  *)
    echoMe "unknown: $OSTYPE"
    ;;
esac


echoCo 'git pull'
        git pull


echoCo 'git submodule init'
        git submodule init


echoCo 'git submodule update'
        git submodule update


function install_cmake {
    if which cmake > /dev/null 2>&1; then
        echoMe 'cmake has installed'
    else
        if which apt-get > /dev/null 2>&1; then
            echoCo 'sudo apt-get install -y cmake'
                    sudo apt-get install -y cmake
        fi

        if which yum > /dev/null 2>&1; then
            echoCo 'sudo yum install -y cmake'
                    sudo yum install -y cmake
        fi

        if which brew > /dev/null 2>&1; then
            echoCo 'brew install cmake'
                    brew install cmake
        fi
    fi
}


install_cmake


echoCo 'cp ~/.vim/.vimrc ~/.vimrc'
        cp ~/.vim/.vimrc ~/.vimrc


echoCo 'vim +PluginInstall +qall'
        vim +PluginInstall +qall


echoCo 'cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive'
        cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive
case "$OSTYPE" in
  solaris*)
    echoMe "SOLARIS"
    ;;
  darwin*)
    echoMe "OSX"
    echoWa 'run me'
    echoWa 'cd ~/.vim/bundle/YouCompleteMe && ~/.vim/bundle/YouCompleteMe/install.py --clang-completer'
    ;; 
  linux*)
    echoMe "LINUX"
    echoWa 'run me'
    echoWa 'cd ~/.vim/bundle/YouCompleteMe && ~/.vim/bundle/YouCompleteMe/install.py --clang-completer'
    ;;
  bsd*) 
    echoMe "BSD"
    ;;
  msys*) 
    echoMe "WINDOWS"
     ;;
  *)
    echoMe "unknown: $OSTYPE"
    ;;
esac


