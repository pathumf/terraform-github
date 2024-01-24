terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.45.0"
    }
  }
}


provider "github" {
  owner = "vox-smart"
  token = var.GITHUB_TOKEN
}


# export TF_VAR_GITHUB_TOKEN="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"