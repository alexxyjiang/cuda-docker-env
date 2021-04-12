FROM alexxyjiang/cuda-env:language-latest
LABEL maintainer="Xueyuan, Jiang <alexxyjiang@gmail.com>"
LABEL version="jupyterlab3.0.10-rstudio1.4.1106"
ENV USER="dev" PASSWD="dev" SHELL="/bin/bash" UID="8086" GID="8086" RSTUDIO_GID="8787" OCTAVE_SITE_INITFILE="/etc/octaverc"
RUN echo "deb https://dl.bintray.com/sbt/debian /" > /etc/apt/sources.list.d/sbt.list \
  && curl -fsL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | apt-key add
RUN apt-get update --fix-missing
RUN apt-get install -y libnvidia-gl-460
RUN apt-get install -y cmake ninja-build gdb maven sbt libclang-dev libpq5 psmisc lsb-release sudo gnuplot pandoc vim
RUN curl -o rstudio-server-1.4.1106-amd64.deb -fsL https://download2.rstudio.org/server/bionic/amd64/rstudio-server-1.4.1106-amd64.deb \
  && dpkg -i rstudio-server-1.4.1106-amd64.deb
RUN groupadd -g ${RSTUDIO_GID} rstudio-users
COPY rserver.conf /etc/rstudio/
COPY texlive.profile /texlive.profile
RUN curl -o install-tl-unx.tar.gz -fsL http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz \
  && tar zxvf install-tl-unx.tar.gz > texlive-tar.log \
  && `grep 'install-tl$' texlive-tar.log` -profile ./texlive.profile -logfile texlive-install.log -repository http://ctan.math.utah.edu/ctan/tex-archive/systems/texlive/tlnet/
RUN pip3 install --upgrade pip
RUN pip install --upgrade setuptools \
  && pip install --upgrade jupyterlab
RUN R -e "install.packages('IRkernel');IRkernel::installspec(user = FALSE)"
RUN pip install --upgrade octave_kernel
COPY start_servers.sh /start_servers.sh
COPY vim.tar.gz /vim.tar.gz
COPY octaverc /etc/octaverc
CMD ["sh", "/start_servers.sh"]
