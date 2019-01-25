#!/bin/sh
# Need to write a for loop that will look through all of the packages in a list that I provide and will loop throug to ensure that (which _) is false

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing homebrew packages..."

# cli tools
if test ! $(which ack); then
# brew install ack
  echo "Installing ack"
  brew install ack
fi
brew install tree
brew install wget

# development server setup
brew install nginx
# brew install dnsmasq

# development tools
brew install git
brew install macvim --override-system-vim
brew install reattach-to-user-namespace
brew install tmux
# brew install zsh
# brew install highlight
brew install nvm
# brew install z
# brew install markdown

# install neovim
brew tap neovim/neovim
brew install --HEAD neovim

#exit 0
