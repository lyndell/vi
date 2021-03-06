# Purpose

The default installation of VIM imitates vi, lacking many wonderful features.  

# Bare minimum

This is the bare minimum I want when using `vi`.  The line numbering and syntax highlighting makes such a huge difference in appearance.  The following can be typed in:

    :set nu ai ts=2 sw=2 et
    :syntax on

The same can be saved in `.vimrc`, in long form:

    syntax on

    set number              " Line numbers on, always
    set autoindent          " always set autoindenting on
    set tabstop=2           " spaces to use for tabstops
    set shiftwidth=2        " spaces to use for autoindent
    set expandtab           " spaces, not tabs

# Install

Download and save the `[vimrc](https://github.com/lyndell/vi/blob/baremin/vimrc)` file to `~/.vimrc`.

