#
# Provider: Auth0
#
# * man: https://registry.terraform.io/providers/auth0/auth0/latest/docs
#

provider "auth0" {
  domain        = var.provider_auth0__domain
  client_id     = var.provider_auth0__client_id
  client_secret = var.provider_auth0__client_secret
}
