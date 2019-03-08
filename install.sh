#!/bin/bash

echo "Installing dotfiles"

echo "Initializing submodule(s)"
git submodule update --init --recursive

# run the symlinks from the install/link.sh folder
source install/link.sh

if [ "$(uname)" == "Darwin" ]; then
    echo "Running on OSX"

    echo "Brewing all the things"
    source install/brew.sh

    echo "Updating macOS settings"
    source installosx.sh

    echo "Installing node (from nvm)"
    source install/nvm.sh

    echo "Configuring nginx"
    # create a backup of the original nginx.conf
    mv /usr/local/etc/nginx/nginx.conf /usr/local/etc/nginx/nginx.original
    ln -s ~/.dotfiles/nginx/nginx.conf /usr/local/etc/nginx/nginx.conf
    # symlink the code.dev from dotfiles
    ln -s ~/.dotfiles/nginx/code.dev /usr/local/etc/nginx/sites-enabled/code.dev
fi

echo "Configuring zsh as default shell"
chsh -s $(which zsh)

# symlink the tdev tmux environment to my local bin for running easily
ln -s ~/dotfiles/bin/tdev /usr/local/bin/tdev
# need to write a function that symlinks all files in \bin with /usr/local/bin
echo "Created a symlink for tdev"

echo "Done."
