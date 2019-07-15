#!/bin/zsh
tmux new-session -d -s zedmapper
tmux send-keys -t zedmapper "catsource && :3" C-m
tmux send-keys -t zedmapper "roslaunch zed_wrapper zed.launch camera_model:=zed" C-m
echo "Now running Zed_Wrapper in tmux session zedmapper. \n\n Check tmux sessions via tmux attach-session -t (session name).\n List sessions via tmux ls."
