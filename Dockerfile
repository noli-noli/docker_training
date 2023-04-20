FROM ubuntu:18.04

# setup requirements packages
RUN apt update -y && \
    apt install -y init && \
    apt install -y systemd
