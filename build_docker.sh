#! /bin/bash
#
# Docker Image: Alpine Linux - Python 3 and Apache/MOD_WSGI
# =============================================================================
# Build docker image
# =============================================================================

REGISTRY="dockercentral.it.example.com:5100"
NAMESPACE="com.example.dev"
IMAGE_NAME="alpine-python3-mod_wsgi"
TAG="3.6.6"

FULL_IMAGE_NAME="${REGISTRY}/${NAMESPACE}/${IMAGE_NAME}:${TAG}"

docker login -u user@dev.example.com -p password ${REGISTRY}

docker build -t $FULL_IMAGE_NAME ./ \
    --build-arg http_proxy=$http_proxy \
    --build-arg https_proxy=$https_proxy \
    -f ./Dockerfile.mod_wsgi
