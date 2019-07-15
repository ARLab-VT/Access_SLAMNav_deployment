#!/bin/zsh
tmux send-keys -t rosbagger C-c
tmux send-keys -t rosbagger "echo bananas" C-m
tmux send-keys -t rosbagger "tmux kill-session" C-m
echo "Bagging complete."
tmux send-keys -t zedmapper C-c
tmux send-keys -t zedmapper "echo bagels" C-m
tmux send-keys -t zedmapper "tmux kill-session" C-m
echo "Mapping stopped.\n DON'T FORGET TO COPY THE BAG FOR USE."

