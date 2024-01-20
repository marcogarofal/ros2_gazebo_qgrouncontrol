#docker build -t qgroundcontrol .

FROM ubuntu:22.04
RUN apt update
RUN apt install vim -y  
RUN apt install 
RUN apt install sudo -y 
RUN apt install git -y 
RUN apt install lsb-release -y 
RUN apt install wget -y 
RUN apt install curl -y 
RUN apt install sudo -y

RUN useradd -ms /bin/bash px4
RUN echo 'px4:px4' | chpasswd
RUN usermod -aG sudo px4
RUN echo 'px4 ALL=(ALL:ALL) NOPASSWD: ALL' >> /etc/sudoers
USER px4
WORKDIR /home/px4
RUN sudo apt update
RUN sudo apt install libsdl2-2.0-0 -y 
RUN sudo apt install gstreamer1.0-gl -y 
RUN sudo apt install libpulse-mainloop-glib0 -y 
RUN sudo usermod -a -G dialout px4
RUN sudo apt remove modemmanager -y 
RUN sudo apt install gstreamer1.0-plugins-bad gstreamer1.0-libav gstreamer1.0-gl -y 
RUN sudo apt install libqt5gui5 -y 
RUN sudo apt install libfuse2 -y 
RUN sudo apt install wget -y
RUN sudo apt install -y libpulse-mainloop-glib0 
RUN sudo apt install wget -y
RUN wget https://d176tv9ibo4jno.cloudfront.net/latest/QGroundControl.AppImage
RUN chmod +x ./QGroundControl.AppImage
 
CMD ["bash"]

#RUN ./QGroundControl.AppImage --appimage-extract
#docker run -it --name qground --net=host -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix  qgroundcontrol
#./QGroundControl.AppImage --appimage-extract 
#export DISPLAY=:0
#LIBGL_ALWAYS_SOFTWARE=1 ./squashfs-root/QGroundControl


