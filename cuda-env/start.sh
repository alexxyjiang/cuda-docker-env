if [ $# -lt 1 ]; then
  echo "usage: sh ${0} [work-path]"
  exit 1
else
  docker run -d --userns=host --network=host --name deep-learning --rm -e USER=$(id -un) -e PASSWD="M00n" -e UID=$(id -u) -e GID=$(id -g) -v ${1}:/home/$(id -un)/ alexxyjiang/cuda-env:deep-learning
fi
