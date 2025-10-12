#!/bin/sh

echo "Setting up Karabiner Elements..."

# Delete the default '~/.config/karabiner' folder
rm -rf ~/.config/karabiner

# Clone Git repository and symlink it
git clone git@github.com:fvoort/karabiner.git /Users/fvoort/Documents/Git/karabiner
ln -sf /Users/fvoort/Documents/Git/karabiner ~/.config/karabiner

# Restart karabiner_console_user_server
launchctl kickstart -k gui/`id -u`/org.pqrs.karabiner.karabiner_console_user_server