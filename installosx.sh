#!/usr/bin/env sh

echo "Show Path bar in Finder"
defaults write com.apple.finder ShowPathbar -bool true

echo "Show Status bar in Finder"
defaults write com.apple.finder ShowStatusBar -bool true

echo "Automatically hide and show the Dock"
defaults write com.apple.dock autohide -bool true

