#!/bin/bash

set -x

if [ -e ~/.vimrc ]; then
  echo "~/.vimrc already exists"
  exit;
else
  cp -p vimrc.loader ~/.vimrc
fi

if [[ "$OSTYPE" == "linux-gnu" ]]; then
  # ...
  echo "linux-gnu"
elif [[ "$OSTYPE" == "darwin"* ]]; then
  echo "Installing vimrc for Mac"
  if [ -h ~/.vimrc ]; then  # file is a symbolic link
    echo "~/.vimrc is symlink, not appending host specific source file."
  else 
    echo "source ~/Dropbox/dotfiles/vim/vimrc.Mac" >> ~/.vimrc 
  fi

elif [[ "$OSTYPE" == "cygwin" ]]; then
  # ...
  echo "cygwin"
elif [[ "$OSTYPE" == "win32" ]]; then
  # ...
  echo "win32" 
elif [[ "$OSTYPE" == "freebsd" ]]; then
  # ...
  echo "freebsd"
else
  # Unknown.
  echo "Wow, that's a weird one.\n"
fi
