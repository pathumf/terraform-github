
locals {
  team_mapping = yamldecode(file("./teams.yaml"))
}
