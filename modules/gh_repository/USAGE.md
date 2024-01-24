# Usage of gh_repository Terraform Module

## Overview
The provided Terraform module is focused on managing GitHub repositories and their related settings and permissions. The module includes resources for creating repositories, setting team access permissions, and managing repository branches.

## Prerequisites
- Terraform v1.5.0
- provider registry.terraform.io/integrations/github v5.45.0

## Usage
```hcl
    module "voxsmart-service-api" {
      source                 = "../../modules/gh_repository"
      repository_name        = "repository name"
      repository_description = "description"
      visibility             = "private"
      team_permissions = {
        "team1" = "maintain"
        "team2"  = "admin"
      }
    }
 ```

 # Inputs

| Name                    | Description                                                  | Type      | Default    | Required |
|-------------------------|--------------------------------------------------------------|-----------|------------|----------|
| repository_name         | The name of the repository                                   | string    |            | yes      |
| repository_description  | A description of the repository                              | string    |            | yes      |
| delete_branch_on_merge  | Automatically delete head branch after a pull request is merged | bool   | false      | no       |
| visibility              | The visibility of the repository                             | string    | "internal" | no       |
| allow_auto_merge        | Allow auto merge                                             | bool      | true       | no       |
| has_issues              | Enable issues functionality in repository                    | bool      | true       | no       |
| has_wiki                | Enable wiki functionality in repository                      | bool      | true       | no       |
| archived                | Whether the repository should be archived                    | bool      | false      | no       |
| has_discussions         | GitHub Discussions on the repository                         | bool      | false      | no       |
| has_projects            | Enable the GitHub Projects features on the repository        | bool      | false      | no       |
| team_permissions        | Map of team IDs to their permissions                         | map(string)|           | yes      |
| default_branch          | The default branch of the repo                               | string    | "main"     | no       |

   
# Output

| Name    | Description                        | Value                |
|---------|------------------------------------|----------------------|
| repository_url | The URL of the created repository  | `github_repository.this.html_url`|
