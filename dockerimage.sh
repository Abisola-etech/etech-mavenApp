#! /bin/bash
# this script is to create a docker image and docker container
# Author: Engr Abisola olaji
repourl= $repo
imagename= $image
dockercontainer=$containername
sudo git clone $repo
cd $repo
sudo chmod 777 $(pwd)
mvn clean package
ls
docker build -t $image .
docker run --name $containername -dp 8800:8080 $image:latest