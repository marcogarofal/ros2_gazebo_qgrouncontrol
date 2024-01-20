# ros2_gazebo_qgrouncontrol

```bash
# Cambia il gruppo del file script.sh a docker
sudo chgrp docker script.sh

# Imposta i permessi del file script.sh
sudo chmod 775 script.sh

# Build del container per lo script Python con MAVSDK
docker build -t script_python_mavsdk container_script_python_mavsdk/

# Build del container per Gazebo con PX4
docker build -t px4_gazebo gazebo/

# Build del container per QGroundControl
docker build -t qgroundcontrol qgroundcontrol/

# Esegui il docker-compose
docker-compose up

# Esegui il container in modalità interattiva, utilizzando la rete dell'host e montando il file mission.py
docker run -it --net=host -v container_script_python_mavsdk/mission.py:/home/px4/mission.py script_python_mavsdk
