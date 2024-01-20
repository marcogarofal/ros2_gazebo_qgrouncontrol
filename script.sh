#!/bin/bash

cd ./PX4-Autopilot
export PX4_HOME_LAT=38.25905277824533
export PX4_HOME_LON=15.595626222658453
export PX4_HOME_ALT=0

make px4_sitl
source /opt/ros/humble/setup.bash 
echo "source /opt/ros/humble/setup.bash" >> .bashrc; source /opt/ros/humble/setup.bash
make px4_sitl gz_x500
