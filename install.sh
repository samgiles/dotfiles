#!/usr/bin/env bash

mkdir -p ~/.config/nvim/bundle
if [ ! -d ~/.config/nvim/bundle/Vundle.vim ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
fi

nvim +PluginInstall +qall

mkdir -p ~/.config/fish
mkdir -p ~/.config/nvim

echo `which fish` | sudo tee -a /etc/shells

# link in configs
ln -sf $(pwd)/config/init.vim ~/.config/nvim/init.vim 
ln -sf $(pwd)/config/tmux.conf ~/.tmux.conf 
ln -sf $(pwd)/config/config.fish ~/.config/fish/config.fish 
ln -sf $(pwd)/config/btf_custom.fish ~/.config/fish/functions/fish_prompt.fish
