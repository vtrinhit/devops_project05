#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`
DOCKER_HUB_ID="vtrinh111"
DOCKER_REPOSITORY="devopsproject5"
VERSION="1.0"

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=${DOCKER_HUB_ID}/${DOCKER_REPOSITORY}

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u ${DOCKER_HUB_ID} -p ${DOCKER_PASSWORD}
docker tag ${DOCKER_REPOSITORY}:${VERSION} ${dockerpath}:${VERSION}

# Step 3:
# Push image to a docker repository
docker push ${dockerpath}:${VERSION}
