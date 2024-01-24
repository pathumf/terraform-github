//terraform github provider
terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "5.45.0"
    }
  }
}

provider "github" {
  owner = "vox-smart"
  token = var.GITHUB_TOKEN
}