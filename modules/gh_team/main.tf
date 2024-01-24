resource "github_team" "team" {
  name        = var.team_name
  description = var.team_description
  privacy     = var.team_privacy
}

resource "github_team_membership" "members" {
  for_each = toset(var.member_list)
  username = each.key
  role     = "member"
  team_id  = github_team.team.id
}

resource "github_team_membership" "maintainers" {
  for_each = toset(var.maintainer_list)
  username = each.key
  role     = "maintainer"
  team_id  = github_team.team.id
}
