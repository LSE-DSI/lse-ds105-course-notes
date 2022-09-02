# Share data for all users

## The mounted folder

When build the docker image, we have mounted two folders:

**The home folder:**

/srv/ds105_home  ->  /home

**The src folder:**

/srv/ds105_src  ->  /srv/ds10_src

## Share data

Use the src folder to share data for all users.

Use a ssh client to connect to EC2 server using the pem file. 

**Note that it is the EC2 instance not the docker container. Use port 2222 for ssh connection**

Upload all data files into `/srv/ds105_src` folder. And then it will be available for all users within the docker container.
