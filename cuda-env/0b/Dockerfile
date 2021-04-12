FROM nvidia/cuda:11.2.2-runtime
LABEL maintainer="Xueyuan, Jiang <alexxyjiang@gmail.com>"
LABEL version="language-latest"
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8 DEBIAN_FRONTEND=noninteractive
RUN apt-get update --fix-missing \
  && apt-get install -y git zsh curl build-essential binutils
RUN bash -c "$(curl -fsSL https://deb.nodesource.com/setup_14.x)" \
  && apt-get update --fix-missing \
  && apt-get install -y openjdk-11-jdk scala python3-dev python3-pip r-base-dev octave nodejs
