#! /bin/bash

# Install kitty

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

stow kitty

# Install OMZ

# If zsh is not included
# pacman -S zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# TODO: Define the pkg manager used based on a criteria

# Install fd

pacman -S fd --noconfirm

# Install ripgrep

pacman -S ripgrep --noconfirm

# Install fzf

pacman -S fzf --noconfirm

# Install tmux & fzf-tmux

pacman -S tmux --noconfirm

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

stow ~/.dotfiles/tmux
tmux source ~/.tmux.conf

# I haven't researched if I need to manually install the plugins (`prefix` + I) or if there's an automatic way to do it

# Add spaceship theme
# https://github.com/spaceship-prompt/spaceship-prompt

# At the time of writing this, there's an issue with async prompt leaving ... permanently. To fix this a config disabling async prompt was added
stow ~/.dotfiles/spaceship

git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1

ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Install zsh plugin
# https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md

stow ~/.dotfiles/oh-my-zsh

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# (0xProto) Font download
 
mkdir -p ~/.local/share/fonts

cd ~/.local/share/fonts && curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/0xProto.tar.xz && tar -xf 0xProto.tar.xz && rm 0xProto.tar.xz

# Install neovim

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
rm -rf /opt/nvim
tar -C /opt -xzf nvim-linux-x86_64.tar.gz

pacman -S --noconfirm --needed gcc make unzip

stow ~/.dotfiles/nvim
