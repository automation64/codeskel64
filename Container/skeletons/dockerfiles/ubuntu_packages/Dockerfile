# Base image
FROM docker.io/library/ubuntu:21.04

# Image Metadata
LABEL \
    container64.os-name="X_TAG_OS_NAME_X" \
    container64.os-version="X_TAG_OS_VER_X" \
    container64.image-version="X_TAG_IMG_VER_X" \
    container64.image-content="X_TAG_IMG_CONTENT_X"

# Prepare package installer
ENV container="docker"
ENV LC_ALL="C"
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt-get update

# Install pre-requisite packages
RUN apt-get -y install \
    X_PKG_PRE_1_X \
    X_PKG_PRE_N_X

# Install packages: X_PACKAGE_X
RUN apt-get -y install \
    X_PKG_1_X \
    X_PKG_N_X

# Configure packages: X_PACKAGE_X

# Cleanup package manager
RUN apt-get clean

# Final command
CMD ["X_CMD_FINAL_X"]
