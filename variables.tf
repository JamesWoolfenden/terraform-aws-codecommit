variable "organization" {
  description = "The name of your organisation"
}

variable "repository_name" {
  description = "The name of your GIT repository"
}

variable "default_branch" {
  description = "The name of the default repository branch"
  default     = "master"
}

locals {
  common_tags {}
}
