# bleech/dotfiles

Basic starting point for macos dotfiles for developers at bleech.

## Background

This script will give you a configured terminal environment with some nice defaults.

[brew](https://brew.sh/) is used for installing command line tools, GUI applications through [brew cask](https://github.com/Homebrew/homebrew-cask), applications from the app store via [mas](https://github.com/mas-cli/mas) and fonts. All installed applications can be found in the `Brewfile`.

The installed terminal is zsh with the plugin manager [zplug](https://github.com/zplug/zplug). Zplug lets you install zsh modules from nearly any source. Its configuration is done in `zshrc`. 

In addition to the basic zsh config, all files in the `./zsh` directory are also loaded. `zshrc` is symlinked to `~/.zshrc`.

This repo also includes a gitconfig that will be symlinked into your home directory as well. This config includes many aliases and other goodies. You still have to manually adjust your git username and email address.

The final part of these settings are sensible macos defaults. All of the settings can be found in the file `./macos`.

## Instructions

1. Prepare Setup:
    ```sh
    cd ~
    git clone git@github.com:bleech/dotfiles.git
    cd dotfiles
    ./bootstrap.sh
    ```
2. Change default shell
    - System Preferences -> Users & Groups
    - Unlock edit mode
    - Right click on your user -> Advanced Options
    - Set `Login shell` to `/usr/local/bin/zsh`
3. Install and symlink files
    ```sh
    # Open `iterm`
    cd ~/dotfiles
    ./install.sh
    ```

