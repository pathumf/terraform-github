# Usage of gh_team Terraform Module

## Overview
This Terraform module is designed to streamline the management of teams within a GitHub organisation. It provides a structured and automated approach to creating teams and managing team memberships, including both regular members and maintainers. This module encapsulates best practices for team setup in GitHub and ensures consistency across team configurations.

## Prerequisites
- Terraform v1.5.0
- provider registry.terraform.io/integrations/github v5.45.0

## Usage
```hcl
    module "[module_name]" {
    source           = "../../modules/gh_teams"
    team_name        = "dummy_team_name"
    team_description = "May the SRE be with you"
    member_list      = ["xxxx"]
    maintainer_list  = ["xxxx"]
 }
 ```

 # Inputs

| Name             | Description                          | Type     | Default     | Required |
|------------------|--------------------------------------|----------|-------------|----------|
| team_name        | The name of the team to be created   | string   |             | yes      |
| team_description | The description of the team          | string   |             | yes      |
| team_privacy     | Privacy level of the team            | string   | "closed"    | no       |
| member_list      | A list of member usernames           | list     | []          | no       |
| maintainer_list  | A list of maintainer usernames       | list     | []          | no       |
   
# Output

| Name    | Description                        | Value                |
|---------|------------------------------------|----------------------|
| team_id | The ID of the created GitHub team  | `github_team.team.id`|
