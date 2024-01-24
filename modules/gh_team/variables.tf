variable "team_name" {
  description = "The name of the team to be created"
  type        = string
}

variable "team_description" {
  description = "The description of the team"
  type        = string
}

variable "team_privacy" {
  description = "Privacy level of the team"
  type        = string
  default     = "closed"
}

variable "member_list" {
  description = "A list of member usernames"
  type        = list(string)
  default     = []
}

variable "maintainer_list" {
  description = "A list of maintainer usernames"
  type        = list(string)
  default     = []
}
