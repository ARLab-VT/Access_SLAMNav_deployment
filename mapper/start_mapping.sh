#!/bin/zsh
tmux new-session -d -s rosbagger
tmux send-keys -t rosbagger "catsource" C-m
tmux send-keys -t rosbagger "rosbag record --lk4 -o 'bags/' /zed/zed_node/rgb/image_rect_color /zed/zed_node/rgb/camera_info /zed/zed_node/right/image_rect_color /zed/zed_node/right/camera_info /zed/zed_node/depth/camera_info /zed/zed_node/depth/depth_registered /zed/zed_node/odom /tf" C-m
echo "Now running rosbag in tmux session rosbagger."
tmux new-session -d -s zedmapper
tmux send-keys -t zedmapper "catsource" C-m
tmux send-keys -t zedmapper "roslaunch zed_wrapper zed.launch camera_model:=zed" C-m
echo "Now running Zed_Wrapper in tmux session zedmapper."
echo "\n Check tmux sessions via tmux attach-session -t (session name).\n List sessions via tmux ls."
