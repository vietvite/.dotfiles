tmux -q has && tmux attach -d || tmux new -n$USER -s$USER@$HOSTNAME
