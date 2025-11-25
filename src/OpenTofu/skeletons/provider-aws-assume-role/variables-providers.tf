#
# Provider: AWS
#

variable "provider_aws__role_arn" {
  description = "IAM Role ARN to assume"
  type        = string
  nullable    = false
}

variable "provider_aws__allowed_account_ids" {
  description = "List of allowed account IDs for the role to assume"
  type        = list(string)
  nullable    = true
  default     = null
}
