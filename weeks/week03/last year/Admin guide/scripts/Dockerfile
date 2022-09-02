FROM ubuntu
RUN apt update && apt install openssh-server sudo -y
RUN useradd -rm -d /home/dsi -s /bin/bash -g root -G sudo dsi 
RUN echo 'dsi:<password>' | chpasswd
RUN mkdir /src/ds105_src
EXPOSE 22