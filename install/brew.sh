#!/bin/sh
# Need to write a for loop that will look through all of the packages in a list that I provide and will loop throug to ensure that (which _) is false

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing homebrew packages..."
brew tap homebrew/bundle
brew bundle --file="~/.Brewfile"

#exit 0
