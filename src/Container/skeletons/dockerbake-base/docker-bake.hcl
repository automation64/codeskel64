variable "TAG" {
  default = "X_TARGET_TAG_X"
}

variable "X_VAR_NAME_X"{
  default = "X_VAR_VALUE_X"
}

group "default"{
  targets = [
    "X_TARGET_NAME_X"
  ]
}

target "X_TARGET_NAME_X"{
  tags = [
    "X_TAG_PREFIX_X:${TAG}"
  ]
  context = "X_BUILD_CONTEXT_X"
  dockerfile = "X_DOCKERFILE_X"
  args = {
    X_VAR_NAME_X = X_VAR_VALUE_X
  }
}
