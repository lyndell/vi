" This must be first, because it changes other options as side effect
set nocompatible  " turn off  vi compatibility. 
set modelines=0   " prevents some security exploits

" tab settings
set tabstop=2
set shiftwidth=2  " number of spaces to use for autoindenting
set softtabstop=2
set expandtab

" text
set autoindent    " always set autoindenting on
set wrap
set textwidth=69
set textwidth=0
set linebreak
set number        " Line numbers on

" search
set hlsearch      " highlight search terms
set incsearch     " find as you type search
set showmatch     " show matching ets/parenthesis
set ignorecase    " ignore case when searching
set smartcase     " if one or more char is uppercase, case-sensitive
nmap <silent> ,/ :nohlsearch<CR> " clearing highlighted searches

" interface
syntax on
set cursorline    " highlight current line
set showcmd       " show partial commands in status
set ttyfast
set ruler
set laststatus=2
set mouse=a     " To enable the mouse, use:
if v:version >= 730
  set norelativenumber " display how far away each line is from the current
endif


set title                " change the terminal's title
set novisualbell         " don't flash
set noerrorbells         " don't beep

" file
set wildmenu       " show list instead of just completing
set wildignore=*.swp,*.bak,*.pyc,*.class
                   " A file that matches with one of these
                   " patterns is ignored when completing file
                   " or directory names

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup       " DON'T: Make a backup before overwriting a file.  
                   "        Leave it around after the file has been
                   "        successfully written.  
set nowritebackup  " don't: Make a backup before overwriting a file. 
                   "        The backup is removed after the file was
                   "        successfully written, unless the 'backup'
                   "        option is also on. 
set noswapfile
:if has('persistent_undo')
  set undofile       " undo previous actions even after you close
                     " and reopen a file.
fi


" backspace
set bs=2
set backspace=indent,eol,start


colorscheme elflord
colorscheme darkblue 
colorscheme delek


" timestamps
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

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" press <F2>, Vim will switch to paste mode, ... Then, you can disable paste mode again with another press of <F2>. Nice and simple. Compare paste mode disabled vs enabled:
set pastetoggle=<F2>

