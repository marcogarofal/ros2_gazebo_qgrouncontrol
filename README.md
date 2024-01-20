# ros2_gazebo_qgrouncontrol

```bash
# Clone the repository
git clone git@github.com:marcogarofal/ros2_gazebo_qgrouncontrol.git
```
```bash
# Change the group of the script.sh file to docker
sudo chgrp docker script.sh
```

```bash
# Set permissions for the script.sh file
sudo chmod 775 script.sh
```

```bash
# Build the container for Python script with MAVSDK
docker build -t script_python_mavsdk container_script_python_mavsdk/
```

```bash
# Build the container for Gazebo with PX4
docker build -t px4_gazebo gazebo/
```

```bash
# Build the container for QGroundControl
docker build -t qgroundcontrol qgroundcontrol/
```

```bash
# Run the docker-compose
docker-compose up
```


### When Gazebo and QgroundControl are ready
#### Run the container interactively, using the host network and mounting the mission.py file
```bash
docker run -it --net=host -v container_script_python_mavsdk/mission.py:/home/px4/mission.py script_python_mavsdk
```
