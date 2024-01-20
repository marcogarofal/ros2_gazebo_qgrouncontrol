#docker build -t px4_gazebo .
#px4_gazebo
FROM ubuntu:22.04

RUN apt update
RUN apt install vim -y
RUN apt install sudo -y
RUN apt install git -y
RUN apt install lsb-release -y
RUN apt install wget -y
RUN apt install curl -y
RUN apt-get install python3-pip -y
RUN useradd -ms /bin/bash px4
RUN echo 'px4:px4' | chpasswd
RUN usermod -aG sudo px4
RUN echo 'px4 ALL=(ALL:ALL) NOPASSWD: ALL' >> /etc/sudoers
USER px4
WORKDIR /home/px4
RUN sudo apt update
RUN pip3 install --user -U empy==3.3.4 pyros-genmsg setuptools
RUN pip3 install kconfiglib
RUN pip install --user jsonschema
RUN pip install --user jinja2
RUN pip3 install --user pyyaml
RUN git clone https://github.com/PX4/PX4-Autopilot.git --recursive
RUN bash ./PX4-Autopilot/Tools/setup/ubuntu.sh
RUN cd ./PX4-Autopilot/

RUN sudo apt update && sudo apt install locales -y
RUN sudo locale-gen en_US en_US.UTF-8
RUN sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
RUN export LANG=en_US.UTF-8
RUN sudo apt install software-properties-common -y
RUN sudo add-apt-repository universe -y
RUN sudo apt update && sudo apt install curl -y
RUN sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
RUN sudo apt update && sudo apt upgrade -y
RUN sudo apt install ros-humble-desktop -y
RUN sudo apt install ros-dev-tools -y
RUN ls  /opt/ros/humble/


#docker compose commands
# docker run -dt --name prova --net=host -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix  px4_gazebo
#RUN cd ~/PX4-Autopilot
#RUN make px4_sitl
#RUN source /opt/ros/humble/setup.bash
#RUN cd ..
#RUN echo "source /opt/ros/humble/setup.bash" >> .bashrc
#RUN make px4_sitl gz_x500 &
CMD ["bash"]
