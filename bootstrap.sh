#!/bin/sh

echo "Bootstrapping your dotfiles..."

# Install xcode command line tools
xcode-select --install

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

brew install zsh

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Install zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh