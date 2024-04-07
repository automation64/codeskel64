  required_providers {
    null = {
      source = "hashicorp/null"
      version = "~> 3.2"
    }
    local = {
      source = "hashicorp/local"
      version = "~> 2.4"
    }
    random = {
      source = "hashicorp/random"
      version = "~> 3.6"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.38"
    }
    google = {
      source = "hashicorp/google"
      version = "~> 5.17"
    }
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.93"
    }
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
