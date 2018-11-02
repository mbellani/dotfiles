#!/bin/bash

function lnk () {
  # find the fully qualified name of the config file
  file_location=$(find $(pwd) -name ".$1")
  # echo what we are going to do  
  echo "ln -s $file_location ~/.$1"
  # create the actual link
  ln -s $file_location ~/.$1
}

lnk "gitconfig"
lnk "spacemacs"
lnk "zshrc"
lnk "tmux.conf"
