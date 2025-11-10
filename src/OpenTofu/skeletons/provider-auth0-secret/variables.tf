#
# Provider: Auth0
#

variable "provider_auth0__domain" {
  description = "Auth0 Domain"
  type        = string
  nullable    = false
}
variable "provider_auth0__client_id" {
  description = "Auth0 Client ID"
  type        = string
  nullable    = false
}
variable "provider_auth0__client_secret" {
  description = "Auth0 Client Secret"
  type        = string
  sensitive   = true
  nullable    = false
}
