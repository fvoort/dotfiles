#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle --file ./Brewfile

# Symlink the Mackup config file to the home directory
ln -sf ~/.dotfiles/mackup.cfg ~/.mackup.cfg

# Symlink the Ghostty config file
ln -sf ~/.dotfiles/ghostty ~/.config/ghostty/config