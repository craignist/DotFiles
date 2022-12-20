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
ln -sf ~/.dotfiles/tmux/tmux.conf.symlink ~/.tmux.conf
