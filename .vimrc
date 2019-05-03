set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

let g:pymode_python = 'python3'
let mapleader = ';'

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'python-mode/python-mode'
Plugin 'jiangmiao/auto-pairs'
Plugin 'git://git.wincent.com/command-t.git'
call vundle#end()
filetype plugin indent on


"autocmd VimEnter * NERDTree

set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1
syntax on
set hlsearch
set incsearch
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
:map <F1> :set paste<CR>
:map <F2> :set nopaste<CR>
:map <F3> :w !sudo tee %
:nnoremap <leader>gd :YcmCompleter GoTo<CR>


