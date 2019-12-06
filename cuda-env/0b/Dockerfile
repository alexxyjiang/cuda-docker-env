FROM nvidia/cuda:10.2-runtime
LABEL maintainer="Xueyuan, Jiang <alexxyjiang@gmail.com>"
LABEL version="cuda10.2-jdk8u222-scala2.11.12-py3.6.9-r3.4.4-node.js12.13.1"
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8 DEBIAN_FRONTEND=noninteractive
RUN apt-get update --fix-missing \
  && apt-get install -y git zsh curl build-essential binutils
RUN bash -c "$(curl -fsL https://deb.nodesource.com/setup_12.x)" \
  && apt-get update --fix-missing \
  && apt-get install -y openjdk-8-jdk scala python3-dev python3-pip r-base-dev nodejs
