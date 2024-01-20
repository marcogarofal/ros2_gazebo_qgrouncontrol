# ros2_gazebo_qgrouncontrol

```bash
# Change the group of the script.sh file to docker
sudo chgrp docker script.sh

# Set permissions for the script.sh file
sudo chmod 775 script.sh

# Build the container for Python script with MAVSDK
docker build -t script_python_mavsdk container_script_python_mavsdk/

# Build the container for Gazebo with PX4
docker build -t px4_gazebo gazebo/

# Build the container for QGroundControl
docker build -t qgroundcontrol qgroundcontrol/

# Run the docker-compose
docker-compose up

# Run the container interactively, using the host network and mounting the mission.py file
docker run -it --net=host -v container_script_python_mavsdk/mission.py:/home/px4/mission.py script_python_mavsdk
