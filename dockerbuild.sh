#!/bin/bash
set -xe

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR

#version=$(basename binary* | cut -d "." -f2,3,4)
sudo docker build -t devopstest:latest . #devopstest:latest -t devopstest:$version .

#sudo docker run -d -p 80:80 csnitsh/devopstest

#sudo docker push csnitsh/devopstest:latest
#sudo docker push csnitsh/devopstest:$version
