#!/bin/bash
mkdir -p /home/${USER}
useradd -G rstudio-users -p `echo "${PASSWD}" | openssl passwd -1 -stdin` ${USER} && chown -R ${USER} /home/${USER} && chgrp -R ${USER} /home/${USER}
rstudio-server start
su ${USER} -c "jupyter lab --no-browser --ip=\"0.0.0.0\" --notebook-dir=\"/home/${USER}\""
