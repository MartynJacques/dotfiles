" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'micha/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0rp/ale'
Plugin 'sheerun/vim-polyglot'
Plugin 'airblade/vim-gitgutter'
Plugin 'auto-pairs-gentle'
Plugin 'yggdroot/indentline'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'

set timeoutlen=1000
set ttimeoutlen=0

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
autocmd BufWritePre * :%s/\s\+$//e

" Line length ruler
if v:version > 703
    set colorcolumn=80
endif

" key remappings
inoremap jk <esc>

" fix backspace
set backspace=indent,eol,start

" Tab spacing https://stackoverflow.com/questions/158968/changing-vim-indentation-behavior-by-file-type
filetype plugin indent on
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
autocmd Filetype python,java setlocal ts=4 sw=4 sts=4 expandtab
set autoindent
set smartindent

" Auto-wrap text files to 80 chars long
au BufRead,BufNewFile *.txt setlocal textwidth=79
au BufRead,BufNewFile *.robot setlocal ts=4 sw=4 sts=4 expandtab syntax=robot

" Jenkinsfile editing groovy
au BufNewFile,BufRead Jenkinsfile* setf groovy

augroup autoformat_settings
  autocmd FileType java AutoFormatBuffer google-java-format
augroup END
