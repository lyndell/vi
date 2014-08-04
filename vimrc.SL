
set textwidth=69
set textwidth=0         " Don't want prose broken into seperate lines
set noautoindent        " autoindenting interferes with prose
set foldmethod=manual   " no folding prose
set formatoptions=tcq  " Vim default

" set a colorscheme
colorscheme elflord
colorscheme darkblue 
colorscheme delek


if &t_Co >= 256 || has("gui_running")
"   colorscheme mustang
endif

if &t_Co > 2 || has("gui_running")
   " switch syntax highlighting on, when the terminal has colors
   syntax on
endif

