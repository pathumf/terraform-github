module "voxsmart-service-api" {
  source                 = "../../modules/gh_repository"
  repository_name        = "voxsmart-service-api"
  repository_description = "service api repo"
  visibility             = "private"
  team_permissions = {
    "frontend" = "maintain"
    "backend"  = "admin"
  }
}

module "voxsmart-service-ui" {
  source                 = "../../modules/gh_repository"
  repository_name        = "voxsmart-service-ui"
  repository_description = "service ui repo"
  visibility             = "private"
  team_permissions = {
    "frontend" = "admin"
  }


}

module "voxsmart-service-sdk" {
  source                 = "../../modules/gh_repository"
  repository_name        = "voxsmart-service-sdk"
  repository_description = "service ui repo"
  visibility             = "public"
  team_permissions = {
    "frontend" = "push"
    "backend"  = "push"
  }
}