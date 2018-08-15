" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'micha/vim-colors-solarized'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'auto-pairs-gentle'
Plugin 'yggdroot/indentline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Status bar theme
let g:airline_solarized_bg='dark'

" Enable line numbers
set number
set relativenumber

" Enable syntax highlighting
syntax on

" Security
set modelines=0

" Colour scheme
colorscheme solarized
set background=dark

" Remove trailing whitespace
" http://vim.wikia.com/wiki/Remove_unwanted_spaces#Automatically_removing_all_trailing_whitespace
autocmd FileType * autocmd BufWritePre <buffer> %s/\s\+$//e

" Line length ruler
if v:version > 703
    set colorcolumn=80
endif

" key remappings
inoremap jk <esc>
inoremap <esc> <nop>

" Tab spacing
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
