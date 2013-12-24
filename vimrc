set nu lbr cul tw=0
set ts=2 sts=2 sw=2 bs=2
set expandtab
set hls

filetype on
syntax on

" Solarize
" set background=light
" colorscheme solarized


"set gfn=Luxi\ Mono\ 12
"set guifont=Bitstream\ Vera\ Sans\ Mono\ 12
"set gfn=Monospace\ 12
set guioptions+=b

" GUI
winpos 351 141
set lines=40
set columns=98

:nnoremap <F5> "=strftime("%c")<CR>P
:inoremap <F5> <C-R>=strftime("%c")<CR>

imap <f5>   <C-R>=strftime("%d/%m/%Y %H:%M:%S")<CR>



augroup mkd
  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:>
augroup END
