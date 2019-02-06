#!/bin/bash
set -xe
version=$(basename binary* | cut -d "." -f2,3,4)
sudo docker build -t devopstest:latest -t devopstest:$version .
