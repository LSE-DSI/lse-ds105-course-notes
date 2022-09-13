# Setup VM

This is a guide of the setup of the docker ubuntu container. 

**Note that the following has already be done**. This is for future reference.

## Connect to server

By default a *dsi* user has been created when building the docker image, which should be used as the admin account.

```bash
$ ssh dsi@ec2-52-56-103-223.eu-west-2.compute.amazonaws.com
```

## Initialize accounts

```bash
$ cd ds105
$ sudo ./addaccounts.sh
```

## Create a student account
```bash
$ sudo addgroup ds105 # make sure the group exists
$ sudo useradd -rm -s /bin/bash -g ds105 <user_name>
$ sudo passwd <user_name>
# Or:
# Without input, in docker env
# $ sudo bash -c "echo 's01:s02' | chpasswd"
$ chage -d 0 <user_name> # force password change
$ sudo chmod 700 /home/<user_name>
```