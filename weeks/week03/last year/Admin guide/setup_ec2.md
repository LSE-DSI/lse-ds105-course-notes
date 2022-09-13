# VM Setup guide

This is a document of the setup of AWS EC2 instance

## The Architecture

The base server is an AWS EC2 instance running Ubuntu 20. The host address is:

> ec2-52-56-103-223.eu-west-2.compute.amazonaws.com

On the EC2 instance, a Ubuntu 20 docker container is running, which is the actual environment that will be used by the ds105 class.

## Change ssh port on Ubuntu

To maintain the default ssh 22 port for the docker container, we need to change the ssh port on EC2 instance.

To do so, change the `port` setting in `/etc/ssh/sshd_config` file.

```bash
$ netstat -tulnp | grep ssh # check current port
$ grep -i port /etc/ssh/sshd_config # check port condig
$ service ssh restart # restart after config change
```

## Build docker image and start docker container

Make sure to change the password within Dockerfile

```bash
$ cd ds105
$ docker build -t ubuntu_ds105
$ mkdir /etc/ds105_home # student home folder
$ mkdir /etc/ds105_src # course source folder
$ docker run -d \
  -it \
  --name ubuntu_ds105 \
  -p 22:22 \
  --restart=always \
  -v /srv/ds105_home:/home \
  -v /srv/ds105_src:/srv/ds105_src \
  ubuntu_ds105
```

## Create a student account
```bash
$ sudo addgroup ds105
$ sudo useradd -rm -s /bin/bash -g ds105 <user_name>
$ sudo passwd <user_name>
$ sudo bash -c "echo 's01:s02' | chpasswd" # in docker env
$ chage -d 0 <user_name>
$ sudo chmod 700 /home/<user_name>
```