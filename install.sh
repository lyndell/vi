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
  # ...
  echo "darwin"
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
