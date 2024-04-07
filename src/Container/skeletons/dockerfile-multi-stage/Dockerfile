# Stage 1
# optional # ARG X_ENV_VAR_X
FROM X_FULL_BASE_IMAGE_REPO_X as X_STAGE_1_X

# Declare variables
# optional # ENV X_ENV_VAR_X="X_ENV_VALUE_X"

# Create content
RUN X_CMD1_X

# Stage N
FROM X_FULL_BASE_IMAGE_REPO_X as X_STAGE_N_X
# optional # ARG X_ENV_VAR_X

# Declare variables
# optional # ENV X_ENV_VAR_X="X_ENV_VALUE_X"

# Create content
RUN X_CMD1_X

# Final Stage
FROM X_FULL_BASE_IMAGE_REPO_X as X_STAGE_Z_X
# optional # ARG X_ENV_VAR_X

# Declare variables
# optional # ENV X_ENV_VAR_X="X_ENV_VALUE_X"

# Create content
RUN X_CMD1_X

# Final command
CMD ["X_CMD_FINAL_X"]
