#Download base image ubuntu 16.04
FROM ubuntu:16.04

# Update Ubuntu Software repository
RUN apt-get update && \
    apt-get install -y libboost-all-dev

COPY binary*.out /usr/local/bin/binary.out
CMD ["/usr/local.bin/binary.out"]
 
EXPOSE 80 443
