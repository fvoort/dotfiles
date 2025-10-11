#!/bin/sh

echo "Setting up Karabiner Elements..."

# Delete the default '~/.config/karabiner' folder
rm -rf ~/.config/karabiner

# Clone Git repository
git clone git@github.com:fvoort/karabiner.git ~/.config

# Restart karabiner_console_user_server
launchctl kickstart -k gui/`id -u`/org.pqrs.karabiner.karabiner_console_user_server