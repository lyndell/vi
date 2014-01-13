set nu linebreak cul textwidth=0
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

