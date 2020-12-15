#!/bin/bash

# COLORS
GREEN=$'\e[0;32m'
RED=$'\e[0;31m'
BLUE=$'\e[0;36m'
RESET=$'\e[0m'

BASE_DOCKER_REPOSITORY=${DOCKER_REPOSITORY}
IMAGE_VERSION=${IMAGE_VERSION:-prod}
BRANCH_BUILD=${BRANCH_BUILD:-production}

ROOT=`pwd`

BUILD_PATH=`pwd`

echo "${BLUE}🔶 1. Creating app folder 🔶${RESET}"
sudo rm -rf app
mkdir app

echo "${BLUE}🔶 2. Getting the source code branch=$BRANCH_BUILD 🔶${RESET}"
git clone -b ${BRANCH_BUILD} ${REPO_LOCATION} app 

echo "${BLUE}🔶 3. Building docker images 🔶${RESET}"
docker build -t ${BASE_DOCKER_REPOSITORY}/${IMAGE_NAME}:${IMAGE_VERSION} -f Dockerfile .

echo "${BLUE}🔶 4. Pushing to your repository server 🔶${RESET}" 
docker push ${BASE_DOCKER_REPOSITORY}/${IMAGE_NAME}:${IMAGE_VERSION}

echo "${BLUE}🔶 5. Cleaning up app folder 🔶${RESET}"
sudo rm -rf app

echo "✅ Done!!"
