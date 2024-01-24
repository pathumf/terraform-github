resource "github_repository" "this" {
  # Repository Creation
  name                   = var.repository_name
  description            = var.repository_description
  delete_branch_on_merge = var.delete_branch_on_merge
  visibility             = var.visibility
  allow_auto_merge       = var.allow_auto_merge
  has_issues             = var.has_issues
  has_wiki               = var.has_wiki
  archived               = var.archived
  has_discussions        = var.has_discussions
  has_projects           = var.has_projects
}

resource "github_team_repository" "team_repo_access" {
  # Set team permissions
  for_each   = var.team_permissions
  team_id    = each.key
  repository = github_repository.this.name
  permission = each.value
}

resource "github_branch" "create_default_branch" {
  # Create branch to be set as default
  repository = github_repository.this.name
  branch     = var.default_branch
}

resource "github_branch_default" "set_default_branch" {
  # Define created branch as the default branch
  repository = github_repository.this.name
  branch     = github_branch.create_default_branch.ref
}
