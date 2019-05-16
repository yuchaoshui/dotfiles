set nocompatible
let mapleader = ';'
set updatetime=100

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vundle plugins
set rtp+=~/.vim/bundle/Vundle.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'python-mode/python-mode'
Plugin 'jiangmiao/auto-pairs'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'mhinz/vim-startify'
Plugin 'easymotion/vim-easymotion'
Plugin 'Chiel92/vim-autoformat'
call vundle#end()
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" indentLine settings
let g:indentLine_enabled = 1
let g:vim_json_syntax_conceal = 0
autocmd Filetype json let g:indentLine_enabled = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim-autoformat settins
" need install: sudo aptitude install astyle clang-format python-pep8 
" need install: sudo aptitude install python3-pep8 python-autopep8 yapf
map <F4> :Autoformat<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" pymode settings
let g:pymode_python = 'python3'
let g:pymode_quickfix_maxheight = 12

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Tagbar settings
let g:tagbar_autofocus=0
let g:tagbar_right = 1
let g:tagbar_width = 25
map <F1> :TagbarToggle<CR>
"autocmd VimEnter * TagbarToggle

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" startify settings
let g:startify_custom_header = startify#fortune#boxed()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim-gitgutter
map <leader>ggl :GitGutterLineHighlightsToggle<CR>
map <leader>u :GitGutterUndoHunk<CR>
let g:gitgutter_override_sign_column_highlight = 0
highlight SignColumn ctermbg=0
highlight GitGutterAdd    guifg=#009900 ctermfg=2 ctermbg=0
highlight GitGutterChange guifg=#bbbb00 ctermfg=3 ctermbg=0
highlight GitGutterDelete guifg=#ff2222 ctermfg=1 ctermbg=0
" always show signcolumn
if exists('&signcolumn')
  set signcolumn=yes
else
  let g:gitgutter_sign_column_always = 1
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" nerdtree settings
"autocmd VimEnter * NERDTree
autocmd BufWinEnter * NERDTreeMirror
autocmd VimEnter * wincmd p
"Close NERDTree if it is the last open buffer
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction
let g:NERDTreeWinSize=30
let NERDTreeMinimalUI = 1
nmap <leader>v :NERDTreeFind<CR>
nmap <leader>f :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" normal settings
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1
syntax on
set hlsearch
set incsearch
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set number
map <F2> :w !sudo tee %
nnoremap <leader>gd :YcmCompleter GoTo<CR>
if bufwinnr(1)
  map ++ :resize +5<CR>
  map -- :resize -5<CR>
  map >> :vertical resize +5<CR>
  map << :vertical resize -5<CR>
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" window switch settings
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
vmap <C-h> <C-w>h
vmap <C-j> <C-w>j
vmap <C-k> <C-w>k
vmap <C-l> <C-w>l
imap <C-h> <ESC><C-w>h
imap <C-j> <ESC><C-w>j
imap <C-k> <ESC><C-w>k
imap <C-l> <ESC><C-w>l
cmap <C-h> <ESC><C-w>h
cmap <C-j> <ESC><C-w>j
cmap <C-k> <ESC><C-w>k
cmap <C-l> <ESC><C-w>l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" tab settings
map <Tab> gt
map <S-Tab> gT
map <leader>q :tabclose<CR>

