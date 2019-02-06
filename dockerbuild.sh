#!/bin/bash
set -xe

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR

version=$(basename binary* | cut -d "." -f2,3,4)
sudo docker build -t devopstest:latest -t devopstest:$version .
