#
# Provider: AWS
#

provider "aws" {
  assume_role {
    role_arn = var.provider_aws__role_arn
  }
  allowed_account_ids = var.provider_aws__allowed_account_ids
  default_tags {
    tags = {
      X_TAG_KEY_X = "X_TAG_VALUE_X"
    }
  }
}
