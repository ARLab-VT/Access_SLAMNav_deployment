#!/bin/zsh
tmux new-session -d -s zedmapper 'roslaunch zed_wrapper zed.launch camera_model:=zed'
echo "Now running Zed_Wrapper in tmux session zedmapper. \n Check it via tmux attach-session -t zedmapper."
