terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "4.26.1"
    }
    tfe = {
      source = "hashicorp/tfe"
    }
  }
}

provider "github" {
  owner = var.github_owner
}

provider "tfe" {
  # Configuration options
}

