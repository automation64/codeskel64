#
# Provider: GitHub
#
# * man: https://registry.terraform.io/providers/integrations/github/latest/docs
#

provider "github" {
  owner = var.provider_github__owner

  write_delay_ms = local.provider_github__write_delay_ms
  max_retries    = local.provider_github__max_retries
}
