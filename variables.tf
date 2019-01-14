variable "repository_name" {
  type        = "string"
  description = "The name of your GIT repository"
}

variable "default_branch" {
  type        = "string"
  description = "The name of the default repository branch"
  default     = "master"
}
