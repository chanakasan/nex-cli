#!/bin/bash

set -e

nx_cli_root=$HOME/dotfiles/cli.nex
source $nx_cli_root/src/base/config.sh

main() {
  local install_dir=$nx_cli_root
  local symlink_src=$install_dir/bin/nex
  local symlink_dest=/usr/local/bin/nex

  echo " Install - nex-cli.pak"
  
  if [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" ]]; then
    echo "can't install on windows"
    echo
    exit
  fi

  sudo ln -nfs $symlink_src $symlink_dest
  echo " => created symlinks at $symlink_dest"
  echo " done"
  echo
}

main
