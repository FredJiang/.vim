set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()            " required
filetype plugin indent on    " required


" added by fred
Plugin 'scrooloose/nerdtree'
" map <C-n> :NERDTreeToggle<CR>
map <F8> :NERDTreeToggle<CR>

Plugin 'Xuyuanp/nerdtree-git-plugin'


set number

if exists('$TMUX')
  set term=screen-256color
endif


" default
execute pathogen#infect()
syntax on
filetype plugin indent on