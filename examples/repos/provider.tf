# Define the required Terraform version and specify the GitHub provider with its version
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.45.0"
    }
  }
}

# Configure the GitHub provider with the organization owner and the token from variables
provider "github" {
  owner = "vox-smart"
  token = var.GITHUB_TOKEN
}
