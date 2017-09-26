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

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

set number

" set mouse=a

set pastetoggle=<F2>

if exists('$TMUX')
  set term=screen-256color
endif

let g:airline_powerline_fonts = 1
set laststatus=2

" default
execute pathogen#infect()
syntax on
filetype plugin indent on
