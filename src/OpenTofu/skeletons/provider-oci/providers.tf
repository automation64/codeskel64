#
# Provider: OCI
#

provider "oci" {
  auth                = var.provider_oci__auth
  config_file_profile = var.provider_oci__config_file_profile
  region              = var.provider_oci__region
}
