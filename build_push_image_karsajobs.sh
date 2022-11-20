#!/bin/bash

# kriteria 3:
# membuat Docker image dari Dockerfile
docker build -t karsajobs-be:v1 .

# Mengubah nama image agar sesuai dengan format Docker Hub (atau GitHub Packages bila menerapkan saran keempat).

# docker image tag item-app:v1 tobialbertino/item-app:v1
docker image tag karsajobs-be:v1 ghcr.io/tobialbertino/karsajobs-be:v1

# Login ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat) via Terminal. 
export PASSWORD_DOCKER_HUB=token
echo $PASSWORD_DOCKER_HUB | docker login ghcr.io -u tobialbertino --password-stdin
# docker login -u tobialbertino -p $1

# push image ke docker hub / ghcr
# docker push tobialbertino/item-app:v1
docker push ghcr.io/tobialbertino/karsajobs-be:v1

# TODO: Edit lagi