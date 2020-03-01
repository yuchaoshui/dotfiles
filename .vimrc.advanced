" important settings
  let mapleader=' '
  set nocompatible
  set updatetime=100


" vim Plug
  call plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  
  Plug 'scrooloose/nerdtree'
  Plug 'majutsushi/tagbar'
  Plug 'roman/golden-ratio'
  
  Plug 'Yggdroot/indentLine'
  Plug 'jiangmiao/auto-pairs'
  Plug 'Chiel92/vim-autoformat'
  Plug 'pseewald/vim-anyfold'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'scrooloose/nerdcommenter'
  
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'mhinz/vim-grepper'
  Plug 'yssl/QFEnter'
  Plug 'mhinz/vim-startify'
  
  Plug 'Valloric/YouCompleteMe'
  Plug 'vim-syntastic/syntastic'
  call plug#end()


" scrooloose/nerdcommenter
  " <leader>cb for comment
  " <leader>cu for uncomment


" vim-airline/vim-airline-themes
  " let g:airline_theme='solarized dark'


" roman/golden-ratio
  " let g:loaded_golden_ratio = 0


" vim-anyfold
  autocmd Filetype python AnyFoldActivate
  autocmd Filetype bash AnyFoldActivate
  set foldlevel=99


" yssl/QFEnter
  let g:qfenter_keymap = {}
  let g:qfenter_keymap.vopen = ['<C-v>']
  let g:qfenter_keymap.hopen = ['<C-CR>']
  let g:qfenter_keymap.topen = ['<C-t>']


" grepper
  " sudo apt-get install silversearcher-ag
  nnoremap <leader>* :Grepper -tool ag -cword -noprompt<cr>
  let g:grepper = { 'open': 1 }
  autocmd User Grepper copen
  let g:grepper.highlight = 1


" airblade/vim-gitgutter
  map <leader>ggl :GitGutterLineHighlightsToggle<CR>
  map <leader>u :GitGutterUndoHunk<CR>
  let g:gitgutter_override_sign_column_highlight = 0
  let g:gitgutter_max_signs = 10000
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


" scrooloose/nerdtree
  autocmd BufWinEnter * silent! NERDTreeMirror
  " Close NERDTree if it is the last open buffer
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
  let g:NERDTreeWinSize=35
  " let NERDTreeMinimalUI = 1
  nmap <leader>v :NERDTreeFind<CR>
  nmap <leader>f :NERDTreeToggle<CR>


" majutsushi/tagbar
  let g:tagbar_autofocus=0
  let g:tagbar_right = 1
  let g:tagbar_width = 35
  map <F3> :TagbarToggle<CR>


" yggdroot/indentLine
  let g:indentLine_enabled = 1
  let g:vim_json_syntax_conceal = 0
  autocmd Filetype json let g:indentLine_enabled = 0
  autocmd Filetype text let g:indentLine_enabled = 0


" chiel92/vim-autoformat
  " sudo aptitude install astyle clang-format python-pep8
  " sudo aptitude install python3-pep8 python-autopep8 yapf
  map <F4> :Autoformat<CR>


" mhinz/vim-startify
  let g:startify_custom_header = startify#fortune#boxed()


" valloric/YouCompleteMe
  nnoremap <leader>gd :tab split \| YcmCompleter GoToDeclaration<CR>
  nnoremap <leader>gt :YcmCompleter GetType<CR>
  let g:ycm_autoclose_preview_window_after_insertion = 1
  let g:ycm_confirm_extra_conf = 0
  let g:ycm_complete_in_comments = 1
  let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'


" vim-syntastic/syntastic
  let g:syntastic_check_on_wq = 0
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  autocmd VimEnter * silent! SyntasticToggleMode
  map <leader>l :SyntasticCheck<CR>
  map <leader><S-l> :SyntasticToggleMode<CR>


" multi windows
  map <C-h> <C-w>h
  map <C-j> <C-w>j
  map <C-k> <C-w>k
  map <C-l> <C-w>l
  vmap <C-h> <C-w>h
  vmap <C-j> <C-w>j
  vmap <C-k> <C-w>k
  vmap <C-l> <C-w>l


" multi tabs
  map <Tab> gt
  map <S-Tab> gT
  map <leader>c :tabclose<CR>


" editor settings
  autocmd VimEnter * :set wrap
  autocmd VimEnter * :set colorcolumn=80
  set hlsearch
  set incsearch
  set tabstop=4
  set shiftwidth=4
  set softtabstop=4
  set expandtab
  set number
  set sidescroll=1
  :highlight LineNr ctermfg=grey
  map <F2> :w !sudo tee %<CR>
  map <leader>q :q<CR>
  map <leader><S-Q> :qall<CR>

  noremap <C-n> <Esc>$a:<CR>

  noremap <S-j> 5j
  noremap <S-k> 5k

  noremap <C-e> 5<C-e>
  noremap <C-y> 5<C-y>
  map <F1> :set paste<CR>
  map <F5> :set nopaste<CR>


" clipboard
  noremap <Leader>y "+yy
  noremap <Leader>p "+p
  noremap <Leader>dd "+dd
  vnoremap <Leader>y "+y
  vnoremap <Leader>x "+x


" quick Run
  nnoremap <leader><leader>r :call CompileRun()<CR>
  func! CompileRun()
      exec "w"
      if &filetype == 'c'
          exec ':w !g++ % -o %<'
          exec ':w !time ./%< | less'
      elseif &filetype == 'cpp'
          exec ':w !g++ % -o %<'
          exec ':w !time ./%< | less'
      elseif &filetype == 'python'
          exec ':w !time python % | less'
      elseif &filetype == 'sh'
          :w !time bash % | less
      endif
  endfunc


" enable this for different project's .vimrc file
  set exrc
