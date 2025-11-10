provider "aws" {
  default_tags {
    tags = {
      X_TAG_PREFIX_X_environment = "X_ENVIRONMENT_X"
      X_TAG_PREFIX_X_project = "X_PROJECT_X"
      X_TAG_PREFIX_X_iac = "X_IAC_REPOSITORY_X"
    }
  }
}
