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

# Symlink .zshrc to home directory
ln -sf ~/.dotfiles/terminal/.zshrc ~/.zshrc

# Symlink the Oh My Posh theme file
ln -sf ~/.dotfiles/terminal/omp-theme-catppuccin_mocha.json ~/.config/ohmyposh/cattpuccin_mocha.json

# Symlink the Ghostty config file
ln -sf ~/.dotfiles/terminal/ghostty-config ~/.config/ghostty/config

# Change dock settings
defaults write com.apple.dock show-recents -bool FALSE # Hide recent apps
defaults write com.apple.dock tilesize -float 32.5 # Change dock size
defaults write com.apple.dock autohide-delay -int 0 # Remove delay for dock to appear
defaults write com.apple.dock autohide-time-modifier -float 0.25 # Speed up dock animation
killall Dock; # Restart Dock to apply changes