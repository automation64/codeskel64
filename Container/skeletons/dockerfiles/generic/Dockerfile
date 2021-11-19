# Base image
FROM X_FULL_BASE_IMAGE_REPO_X

# Image Metadata
LABEL \
    container64.os-name="X_TAG_OS_NAME_X" \
    container64.os-version="X_TAG_OS_VER_X" \
    container64.image-version="X_TAG_IMG_VER_X" \
    container64.image-content="X_TAG_IMG_CONTENT_X"

# Prepare environment
ENV X_ENV_VAR_X="X_ENV_VALUE_X"

# Prepare package installer
RUN X_PKG_PREPARE_X

# Install pre-requisite packages
RUN X_PKG_ADD_X \
    X_PKG_PRE_1_X \
    X_PKG_PRE_N_X

# Install packages
RUN X_PKG_ADD_X \
    X_PKG_1_X \
    X_PKG_N_X

# Cleanup
RUN X_PKG_CLEAN_X

# Final command
CMD ["X_CMD_FINAL_X"]
