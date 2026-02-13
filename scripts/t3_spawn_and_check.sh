#!/usr/bin/env bash
set -e
source /opt/ros/humble/setup.bash
source ~/2026/carla_ros2_ws/install/setup.bash

ros2 topic list | grep carla | head -n 30
ros2 launch carla_spawn_objects carla_spawn_objects.launch.py
