#!/usr/bin/env bash
set -e
source /opt/ros/humble/setup.bash
source ~/2026/carla_ros2_ws/install/setup.bash

ros2 launch carla_ros_bridge carla_ros_bridge.launch.py host:=localhost port:=2000 timeout:=10
