# Base image
FROM X_UBUNTU_IMAGE_X

# Prepare package installer
ENV container="docker"
ENV LC_ALL="C"
ENV DEBIAN_FRONTEND="noninteractive"

# Install packages
ENV APP_X_PACKAGE_CAPS_X_PACKAGES="X_PACKAGES_X"
RUN \
    apt-get update && \
    apt-get -y install \
        $APP_X_PACKAGE_CAPS_X_PACKAGES && \
    apt-get clean

# Final command
CMD ["X_CMD_FINAL_X"]
