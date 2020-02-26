set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'godoctor/godoctor.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/syntastic'
Plugin 'Raimondi/delimitMate'
Plugin 'terryma/vim-multiple-cursors'

call vundle#end()            " required
filetype plugin indent on    " required


let g:indentLine_char='┆'
let g:indentLine_enabled=1


" set mouse=a
set number
set paste 
set pastetoggle=<F2>
set laststatus=2
set list lcs=tab:\»\ ,space:· 
highlight SpecialKey ctermfg=8


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts=1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'scrooloose/nerdtree'
map <F8> :NERDTreeToggle<CR>
" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'Valloric/YouCompleteMe'
set runtimepath+=~/.vim/bundle/YouCompleteMe
let g:syntastic_ignore_files=[".*\.py$"]
let g:ycm_collect_identifiers_from_comments_and_strings=1         " 注释与字符串中的内容也用于补全
let g:ycm_collect_identifiers_from_comments_and_strings=1         " 注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_tags_files=1                   " 开启 YCM 基于标签引擎
let g:ycm_complete_in_comments=1                                  " 在注释输入中也能补全
let g:ycm_complete_in_strings=1                                   " 在字符串输入中也能补全
let g:ycm_confirm_extra_conf=0
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
let g:ycm_key_list_previous_completion=['<c-p>', '<Up>']
let g:ycm_key_list_select_completion=['<c-n>', '<Down>']          " 映射按键, 没有这个会拦截掉tab, 导致其他插件的tab不能用
let g:ycm_seed_identifiers_with_syntax=1                          " 语法关键字补全
let g:ycm_show_diagnostics_ui=0                                   " 禁用语法检查
let g:ycm_min_num_of_chars_for_completion=2                       " 从第2个键入字符就开始罗列匹配项
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>" |          " 回车即选中当前项
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|   " 跳转到定义处


if exists('$TMUX')
  set term=screen-256color
endif


" default
execute pathogen#infect()
syntax on
filetype plugin indent on
