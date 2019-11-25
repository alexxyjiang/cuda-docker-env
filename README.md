# cuda-docker-env
docker image source code for cuda based usage

## rule of naming docker file path
```regex
(image-name)/[0-9][a-z]/Dockerfile
```

- \[0-9\]: layer
  - 0: language
  - 1: service
  - 2: workspace

- \[a-z\]: version
  - a: latest
  - b-z: different versions
