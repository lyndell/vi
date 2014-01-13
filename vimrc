set nu lbr cul tw=0
set ts=2  bs=2
set shiftwidth=2 softtabstop=2

set expandtab
set hlsearch

filetype on
syntax on

" Solarize
" set background=light
" colorscheme solarized

" GUI
if has('gui_running')
  "set gfn=Luxi\ Mono\ 12
  "set guifont=Bitstream\ Vera\ Sans\ Mono\ 12
  "set gfn=Monospace\ 12
  set guioptions+=b

  winpos 351 141
  set lines=40
  set columns=98

endif

:nnoremap <F5> "=strftime("%c")<CR>P
:inoremap <F5> <C-R>=strftime("%c")<CR>

imap <f5>   <C-R>=strftime("%d/%m/%Y %H:%M:%S")<CR>



autocmd BufRead,BufNewFile  *.md,*.MD,*.markdown set filetype=markdown
autocmd BufRead,BufNewFile  *.md,*.MD,*.markdown set filetype=mkd

