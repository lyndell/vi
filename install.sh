#!/bin/bash

set -x

if [ -e ~/.vimrc ];
then
  mv ~/.vimrc ~/vimrc.$RANDOM
fi

if [[ "$OSTYPE" == "linux-gnu" ]]; then
  # TODO: parameterize for any location of source file 
  cp -p vimrc.SL.local ~/.vimrc
  if [ -e ~/.exrc ];
  then
    mv ~/.exrc ~/exrc.$RANDOM
  fi
  cp -p exrc ~/.exrc

elif [[ "$OSTYPE" == "darwin"* ]]; then
  # TODO: parameterize for any location of source file 
  cp -p vimrc.Mac.local ~/.vimrc

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
