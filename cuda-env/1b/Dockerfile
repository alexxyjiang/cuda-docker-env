FROM alexxyjiang/cuda-env:language-latest
LABEL maintainer="Xueyuan, Jiang <alexxyjiang@gmail.com>"
LABEL version="cuda10.1-jdk8u222-scala2.11.12-py3.6.9-r3.4.4-maven3.6.0-sbt1.3.4-jupyterlab1.2.3-rstudio1.2.5019"
ENV USER="dev" PASSWD="dev" SHELL="/bin/bash"
RUN echo "deb https://dl.bintray.com/sbt/debian /" > /etc/apt/sources.list.d/sbt.list \
  && curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | apt-key add
RUN apt-get update --fix-missing \
  && apt-get install -y libclang-dev psmisc maven sbt sudo lsb-release
RUN curl -o rstudio-server-1.2.5019-amd64.deb https://download2.rstudio.org/server/bionic/amd64/rstudio-server-1.2.5019-amd64.deb \
  && dpkg -i rstudio-server-1.2.5019-amd64.deb
RUN groupadd rstudio-users
COPY rserver.conf /etc/rstudio/rserver.conf
RUN pip3 install --upgrade pip
RUN pip install --upgrade setuptools \
  && pip install --upgrade jupyterlab
COPY start_servers.sh /start_servers.sh
CMD ["sh", "/start_servers.sh"]
