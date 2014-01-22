" Pathogen
filetype off " Pathogen needs to run before plugin indent on
call pathogen#runtime_append_all_bundles()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
filetype plugin indent on


" This must be first, because it changes other options as side effect
set nocompatible

set linebreak
set textwidth=0
set autoindent    " always set autoindenting on
set number                      " Line numbers on
set showmatch                   " show matching ets/parenthesis
set incsearch                   " find as you type search
set hlsearch                    " highlight search terms
set ignorecase                  " case insensitive search
set wildmenu                    " show list instead of just completing
set cursorline                  " highlight current line
set showcmd                     " show partial commands in status


set ts=2  bs=2
set shiftwidth=2                " number of spaces to use for autoindenting
set softtabstop=2

set expandtab
set hlsearch      " highlight search terms
set ignorecase    " ignore case when searching


set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep


" never ever let Vim write a backup file! They did that in the 70’s. Use modern ways for tracking your changes

set nobackup
"set noswapfile

set mouse=a     " To enable the mouse, use:
nmap <silent> ,/ :nohlsearch<CR> " clearing highlighted searches


filetype on
syntax on

" Solarize
" set background=light
" colorscheme solarized

:nnoremap <F5> "=strftime("%c")<CR>P
:inoremap <F5> <C-R>=strftime("%c")<CR>


" Strip all trailing whitespace from a file, using ,W
nnoremap <leader>W :%s/\s\+$//<CR>:let @/=''<CR>

imap <f5>   <C-R>=strftime("%d/%m/%Y %H:%M:%S")<CR>


if has('autocmd')
  autocmd BufRead,BufNewFile  *.md,*.MD,*.markdown set filetype=markdown
  autocmd BufRead,BufNewFile  *.md,*.MD,*.markdown set filetype=mkd
endif


if &t_Co >= 256 || has("gui_running")
"   colorscheme mustang
endif

if &t_Co > 2 || has("gui_running")
   " switch syntax highlighting on, when the terminal has colors
   syntax on
endif

set nolist
"set listchars=tab:>.,trail:.,extends:#,nbsp:.   " highlight whitespaces for you in a convenient way:
autocmd filetype html,xml set listchars-=tab:>.

" press <F2>, Vim will switch to paste mode, ... Then, you can disable paste mode again with another press of <F2>. Nice and simple. Compare paste mode disabled vs enabled:
set pastetoggle=<F2>

