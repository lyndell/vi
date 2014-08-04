When I don't have a working `.vimrc`, I issue the following
to get a more usage state.  Gotta' have line numbers and
color.

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

