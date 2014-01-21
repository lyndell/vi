" This must be first, because it changes other options as side effect
set nocompatible

set linebreak 
set textwidth=0
set number                      " Line numbers on
set showmatch                   " show matching ets/parenthesis
set incsearch                   " find as you type search
set hlsearch                    " highlight search terms
set ignorecase                  " case insensitive search
set wildmenu                    " show list instead of just completing
set cursorline                  " highlight current line
set showcmd                     " show partial commands in status


set ts=2  bs=2
set shiftwidth=2 softtabstop=2

set expandtab
set hlsearch

filetype on
syntax on

" Solarize
" set background=light
" colorscheme solarized

:nnoremap <F5> "=strftime("%c")<CR>P
:inoremap <F5> <C-R>=strftime("%c")<CR>

imap <f5>   <C-R>=strftime("%d/%m/%Y %H:%M:%S")<CR>



autocmd BufRead,BufNewFile  *.md,*.MD,*.markdown set filetype=markdown
autocmd BufRead,BufNewFile  *.md,*.MD,*.markdown set filetype=mkd

