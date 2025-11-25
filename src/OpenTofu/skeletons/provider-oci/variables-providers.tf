#
# Provider: OCI
#

variable "provider_oci__auth" {
  default     = "SecurityToken"
  description = "OCI Authentication type"
  type        = string
  nullable    = true
}
variable "provider_oci__config_file_profile" {
  description = "OCI CLI configuration path"
  type        = string
  nullable    = true
  default     = null
}
variable "provider_oci__region" {
  description = "OCI Region"
  type        = string
  nullable    = false
}
