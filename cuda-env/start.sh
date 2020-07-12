if [ $# -lt 1 ]; then
  echo "usage: sh ${0} [work-path]"
  exit 1
else
  docker run -d --rm --name deep-learning --gpus all --network=host --userns=host -e DISPLAY=${DISPLAY} -e XDG_RUNTIME_DIR=${XDG_RUNTIME_DIR} -e USER=$(id -un) -e PASSWD="M00n" -e UID=$(id -u) -e GID=$(id -g) -v /tmp/.X11-unix:/tmp/.X11-unix -v ${XDG_RUNTIME_DIR}:${XDG_RUNTIME_DIR} -v ${1}:/home/$(id -un)/ alexxyjiang/cuda-env:deep-learning
fi
