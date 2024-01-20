#docker build -t script_python_mavsdk .

FROM ubuntu:22.04

RUN apt update
RUN apt install vim -y
RUN apt install sudo -y
RUN apt install git -y
RUN apt install lsb-release -y
RUN apt install wget -y
RUN apt install curl -y
RUN apt-get install python3-pip -y
RUN python3 -m pip install mavsdk
RUN useradd -ms /bin/bash px4
RUN echo 'px4:px4' | chpasswd
RUN usermod -aG sudo px4
RUN echo 'px4 ALL=(ALL:ALL) NOPASSWD: ALL' >> /etc/sudoers
USER px4
WORKDIR /home/px4
RUN sudo apt update

CMD ["bash"]

#docker run -it -v /home/pc/Scrivania/px4/container_script_python_interazione_mavsdk/mission.py:/home/px4/mission.py script_python_mavsdk
