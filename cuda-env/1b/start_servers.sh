#!/bin/bash
groupadd -g ${GID} ${USER}
useradd -m -u ${UID} -g ${GID} -G rstudio-users -p `echo "${PASSWD}" | openssl passwd -1 -stdin` -s ${SHELL} ${USER}
rstudio-server start
chroot --userspec=${USER}:${USER} / ${SHELL} -c "HOME=/home/${USER} && cd ~ && cp /vim.tar.gz ./ && tar -zxf vim.tar.gz"
chroot --userspec=${USER}:${USER} / ${SHELL} -c "HOME=/home/${USER} jupyter lab --no-browser --ip=\"0.0.0.0\" --notebook-dir=\"/home/${USER}\""
