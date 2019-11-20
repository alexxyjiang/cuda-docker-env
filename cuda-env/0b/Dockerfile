FROM nvidia/cuda:10.1-runtime
LABEL maintainer="Xueyuan, Jiang <alexxyjiang@gmail.com>"
LABEL version="cuda10.1-jdk8u222-scala2.11.12-py3.6.8-r.3.4.4"
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8 DEBIAN_FRONTEND=noninteractive
RUN apt-get update --fix-missing \
  && apt-get install -y git build-essential binutils \
  && apt-get install -y openjdk-8-jdk scala python3-dev python3-pip r-base-dev
