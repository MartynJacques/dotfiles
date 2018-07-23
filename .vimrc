" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'micha/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable line numbers
set number

" Enable syntax highlighting
syntax on

" Security
set modelines=0

" Colour scheme
colorscheme solarized
set background=dark

" Remove trailing whitespace 
" http://vim.wikia.com/wiki/Remove_unwanted_spaces#Automatically_removing_all_trailing_whitespace
autocmd FileType c,cpp,java,php,python autocmd BufWritePre <buffer> %s/\s\+$//e

" Line length
set colorcolumn=80


