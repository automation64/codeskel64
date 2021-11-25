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

# Define requirements for application: X_PACKAGE_CAPS_X
ENV APP_X_PACKAGE_CAPS_X_PREREQS=""

# Define packages for application: X_PACKAGE_CAPS_X
ENV APP_X_PACKAGE_CAPS_X_PACKAGES=""

# Install packages for the application: X_PACKAGE_CAPS_X
RUN apt-get -y install $APP_X_PACKAGE_CAPS_X_PREREQS $APP_X_PACKAGE_CAPS_X_PACKAGES

# Configure packages: X_PACKAGE_CAPS_X

# Cleanup package manager
RUN apt-get clean

# Final command
CMD ["X_CMD_FINAL_X"]
