#!/bin/bash

DOTFILES=$HOME/dotfiles
echo "creating symlinks"
linkables=$( find -H "$DOTFILES" -maxdepth 3 -name '*.symlink' )
for file_temp in $linkables ; do
    target="$HOME/.$( basename $file_temp ".symlink" )"
    echo "creating symlink for $file_temp"
    ln -s $file_temp $target
done
