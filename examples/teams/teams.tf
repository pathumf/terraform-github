module "github_teams" {
  source = "../../modules/gh_team"
  for_each = {
    for team in local.team_mapping.teams :
    team.team_name => team
  }
  team_name        = each.value.team_name
  team_description = each.value.description
  member_list      = each.value.member
  maintainer_list  = each.value.maintainer
}
