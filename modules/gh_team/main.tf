resource "github_team" "team" {
  # Resource to create a GitHub team with specified name, description, and privacy settings
  name        = var.team_name
  description = var.team_description
  privacy     = var.team_privacy
}

resource "github_team_membership" "members" {
  # Resource to add members to the GitHub team
  for_each = toset(var.member_list)
  username = each.key
  role     = "member"
  team_id  = github_team.team.id
}

resource "github_team_membership" "maintainers" {
  # Resource to add maintainers to the GitHub team
  for_each = toset(var.maintainer_list)
  username = each.key
  role     = "maintainer"
  team_id  = github_team.team.id
}
