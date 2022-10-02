FROM ubuntu:latest

RUN \
  apt-get update && \
  apt-get install -y vim && \
  apt-get install -y openjdk-17-jdk && \
  apt-get install -y wget && \
  apt-get install -y lsof && \
  apt-get install -y systemctl

