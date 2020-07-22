#!/bin/bash

# Symlink bash files to $HOME
ln -s $PWD/.bash_alias $HOME/.bash_alias
ln -s $PWD/.bash_profile $HOME/.bash_profile
ln -s $PWD/.bashrc $HOME/.bashrc

# Symlink i3wm
mkdir -p $HOME/.config/i3/
ln -s $PWD/.config/i3/config $HOME/.config/i3/config
ln -s $PWD/.config/i3/tmux_session.sh $HOME/.config/i3/tmux_session.sh
ln -s $PWD/.config/i3/wm_next.sh $HOME/.config/i3/wm_next.sh
ln -s $PWD/.config/i3/wm_prev.sh $HOME/.config/i3/wm_prev.sh

ln -s $PWD/.vimrc $HOME/

ln -s $PWD/.tmux.conf $HOME/
