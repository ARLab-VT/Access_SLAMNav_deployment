# access_mapper
Mapping tools for the Access_SLAMNav project

To install everything, look at the slam_annotator folder.  This has install scripts for everything related to the annotation, there is no install script for the mapper yet, Hani may make one in the future.  (The SLAM annotator doesn't care where the RGB-D stuff comes from, it just needs a depth map and a single camera).  These install tools do NOT install move_base, because that is a separate thing.  The actual barrier detectors etc. are in a different GitHub folder -- the access_mapping repository has all the stuff about the ROS nodes needed for object detection.  The Gate node is in Python 2, and the Object Detection node is in Python 3.  The install scripts handle putting these things in the right spot, and also download the access_mapping repository to your computer so you can use that code too.

The mapper folder contains recording stuff for using the RGB-D camera and making a ROS bag file.  

The slam_annotator takes the raw recording from the camera (ROS bag) and does the SLAM on it to make the 3D map, and also does barrier detection (annotation).  The output of the slam_annotator is the occupancy grid map which is an input to the move_base functions.

The move_base function has the global planner which Hani is over-riding so it pulls from both that map and the other barrier lists and combines them.
