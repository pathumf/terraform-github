variable "repository_name" {
  description = "The name of the repository"
  type        = string
}

variable "repository_description" {
  description = "A description of the repository"
  type        = string
}

variable "delete_branch_on_merge" {
  description = "Automatically delete head branch after a pull request is merged"
  type        = bool
  default     = false
}

variable "visibility" {
  description = "The visibility of the repository"
  type        = string
  default     = "internal"
}

variable "allow_auto_merge" {
  description = "Allow auto merge"
  type        = bool
  default     = true
}

variable "has_issues" {
  description = "Enable issues functionality in repository"
  type        = bool
  default     = true
}

variable "has_wiki" {
  description = "Enable wiki functionality in repository"
  type        = bool
  default     = true
}

variable "archived" {
  description = "Whether the repository should be archived"
  type        = bool
  default     = false
}

variable "has_discussions" {
  description = "GitHub Discussions on the repository"
  type        = bool
  default     = false
}

variable "has_projects" {
  description = "enable the GitHub Projects features on the repository"
  type        = bool
  default     = false
}

variable "team_permissions" {
  description = "Map of team IDs to their permissions"
  type        = map(string)
}