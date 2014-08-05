Bare minimum I want when using `vi`.  The line numbering and syntax highlighting makes such a huge difference in appearance.

    :set nu ai ts=2 sw=2
    :syntax on

The same can be saved in `.vimrc`, in long form:

    set number              " Line numbers on, always
    set autoindent          " always set autoindenting on
    set tabstop=2           " spaces to use for tabstops
    set shiftwidth=2        " spaces to use for autoindent

If tab characters are an issue:

    set expandtab           " expand tabs to spaces

followed with `:retab` to convert the tab characters to
spaces.

