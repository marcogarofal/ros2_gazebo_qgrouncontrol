# ros2_gazebo_qgrouncontrol

##### Clone the repository
```bash
git clone git@github.com:marcogarofal/ros2_gazebo_qgrouncontrol.git
```
```bash
cd ros2_gazebo_qgrouncontrol/
```
##### Change the group of the script.sh file to docker
```bash
sudo chgrp docker script.sh
```
##### Set permissions for the script.sh file
```bash

sudo chmod 775 script.sh
```
##### Build the container for Python script with MAVSDK
```bash
docker build -t script_python_mavsdk container_script_python_mavsdk/
```
##### Build the container for Gazebo with PX4
```bash
docker build -t px4_gazebo gazebo/
```
##### Build the container for QGroundControl
```bash
docker build -t qgroundcontrol qgroundcontrol/
```

##### Run the docker-compose
```bash
docker compose up
```


### When Gazebo and QgroundControl are ready
#### Run the container interactively, using the host network and mounting the mission.py file
```bash
docker run -it --net=host -v ./container_script_python_mavsdk/mission.py:/home/px4/mission.py script_python_mavsdk
```

```bash
python3 mission.py
```

