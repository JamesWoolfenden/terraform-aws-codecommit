variable "repository_name" {
  type        = "string"
  description = "The name of your GIT repository"
}

variable "default_branch" {
  type        = "string"
  description = "The name of the default repository branch"
  default     = "master"
}

variable "developer_group" {
  description = "An existing Iam Group to attach the policy permissions to"
}

# this is enables you to add dependancies
variable depends_on {
  default     = []
  description = "This is a way to make a module depends on, which isnt built in."
  type        = "list"
}
