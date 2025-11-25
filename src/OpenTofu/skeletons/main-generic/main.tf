#
# Main
#

# optional # GitHub
module "X_MODULE_NAME_X" {
  source = "github.com/X_GITHUB_OWNER_X/X_REPOSITORY_X?ref=X_VERSION_TAG_X"
}

# optional # Local
module "X_MODULE_NAME_X" {
  source = "X_LOCAL_MODULE_PATH_X"
}

# optional # Registry
module "X_MODULE_NAME_X" {
  source = "X_NAMESPACE_X/X_NAME_X/X_PROVIDER_X"
}
