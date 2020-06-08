FROM alexxyjiang/cuda-env:language-latest
LABEL maintainer="Xueyuan, Jiang <alexxyjiang@gmail.com>"
LABEL version="jupyterlab2.1.2-rstudio1.3.959"
ENV USER="dev" PASSWD="dev" SHELL="/bin/bash" UID="8086" GID="8086" RSTUDIO_GID="8787" OCTAVE_SITE_INITFILE="/etc/octaverc"
RUN echo "deb https://dl.bintray.com/sbt/debian /" > /etc/apt/sources.list.d/sbt.list \
  && curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | apt-key add
RUN apt-get update --fix-missing
RUN apt-get install -y libnvidia-gl-435
RUN apt-get install -y libclang-dev psmisc maven sbt sudo lsb-release vim
RUN apt-get install -y texlive-base texlive-xetex gnuplot
RUN curl -o rstudio-server-1.3.959-amd64.deb https://download2.rstudio.org/server/bionic/amd64/rstudio-server-1.3.959-amd64.deb  \
  && dpkg -i rstudio-server-1.3.959-amd64.deb
RUN groupadd -g ${RSTUDIO_GID} rstudio-users
COPY rserver.conf /etc/rstudio/
RUN pip3 install --upgrade pip
RUN pip install --upgrade setuptools \
  && pip install --upgrade jupyterlab
RUN R -e "install.packages('IRkernel');IRkernel::installspec(user = FALSE)"
RUN pip install --upgrade octave_kernel
COPY start_servers.sh /start_servers.sh
COPY vim.tar.gz /vim.tar.gz
COPY octaverc /etc/octaverc
CMD ["sh", "/start_servers.sh"]
