#!/bin/bash
curl -LO http://invisible-island.net/datafiles/current/terminfo.src.gz
gunzip terminfo.src.gz
tic -x terminfo.src
rm ./terminfo.src
sudo apt install copyq
sudo apt install tmux
sudo apt install xclip
sudo apt install zoxide
sudo apt install fzf
python3 -m pip install libtmux --user
python3 -m pip install dataclasses --user
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
#ln -sf ~/.dotfiles/tmux/tmux.conf.symlink ~/.tmux.conf
git clone https://github.com/gpakosz/.tmux.git ~/.oh-my-tmux
ln -s -f ~/.oh-my-tmux/.tmux.conf ~/.tmux.conf
ln -s -f ~/.dotfiles/tmux/.tmux.conf.local.symlink ~/.tmux.conf.local
