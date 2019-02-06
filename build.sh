#!/bin/bash
set -xe 
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR
g++ -std=c++11 -I/usr/include/boost/asio -I/usr/include/boost -o binary.out main.cpp connection.cpp connection_manager.cpp mime_types.cpp reply.cpp request_handler.cpp request_parser.cpp server.cpp -lboost_system -lboost_thread -lpthread
echo "r is ${1}"
b=$BUILD_BUILDNUMBER
echo "b is ${b}"
c=$(git rev-parse --short HEAD )
echo "c is ${c}"
version=$1.$b.$c
echo "version is ${version}"
mkdir -p artifacts
mv binary.out artifacts/binary.$version.out
cp Dockerfile artifacts/Dockerfile
echo $version | tee artifacts/readme.txt

#ls -alh
#cat readme.txt
