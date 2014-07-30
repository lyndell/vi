" ---------------------------------------------------------------------------
" Basics
"
" from:  http://vimuniversity.com/samples/your-first-vimrc-should-be-nearly-empty
"
" This must be first, because it changes other options as side effect
" 
" ---------------------------------------------------------------------------

set nocompatible               " Use Vim settings;  Turn off  vi compatibility. 
set modelines=0                " prevents some security exploits
set backspace=indent,eol,start " Make backspace behave in a sane manner.
                               " Allow backspacing over everything in insert mode
syntax on                      " Switch syntax highlighting on
filetype plugin indent on      " File type detection and language-dependent indenting.

" tab settings
set tabstop=2                  " spaces to use for tabstops
set shiftwidth=2               " spaces to use for autoindent
set softtabstop=2             
set expandtab                  " expand tabs to spaces
set nosmarttab                 " always use tabstops

" Formattage
set wrap
set textwidth=69
set textwidth=60
set linebreak           " wrap at wordbreak
set number              " Line numbers on, always
set foldmethod=indent   " makes it easier to read long code
set foldlevelstart=10   " open most folds by default
set formatoptions+=ro   " comment continuation
set autoindent          " always set autoindenting on
set smartindent         " smartindent! :)
" 
"                    - After a line ending in '{'.
"                    - After a line starting with a keyword from 'cinwords'.
"                    - Before a line starting with '}' (only with the "O" command).
" 


" ---------------------------------------------------------------------------
"  Search
" ---------------------------------------------------------------------------

set hlsearch            " highlight search terms
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
set incsearch           " find as you type search
set showmatch           " show matching ets/parenthesis
set ignorecase          " ignore case when searching
set smartcase           " if one or more char is uppercase, case-sensitive
                       
                       
" ----------------------------------------------------------------------------
"  Interface
" ----------------------------------------------------------------------------

set cursorline          " highlight current line
set showcmd             " show partial commands in status
set showmode            " show current mode
set ttyfast
set shortmess=aTI       " No "welcome" message - shut up!
set ruler               " Show the cursor position all the time
set laststatus=2
set lazyredraw          " redraw only when we need to.

" timestamps
:nnoremap <F5> "=strftime("%d/%m/%Y %H:%M:%S")<CR>P
:inoremap <F5> <C-R>=strftime("%d/%m/%Y %H:%M:%S")<CR>
" old one
"imap <f5>   <C-R>=strftime("%d/%m/%Y %H:%M:%S")<CR> 

" Press <F2> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F2>


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
set autoread                          " reload files (no local changes only)



" ---------------------------------------------------------------------------
"  Mac specific vimrc settings
" ---------------------------------------------------------------------------

if has("mac") || has("macunix")
  "
  "   mac         Macintosh version of Vim.
  "   macunix     Macintosh version of Vim, using Unix files (OS-X).
  "
  "
  "
  colorscheme badwolf

endif


