variable "repository_name" {
  type        = string
  description = "The name of your GIT repository"
}

variable "default_branch" {
  type        = string
  description = "The name of the default repository branch"
  default     = "master"
}

variable "developer_group" {
  description = "An existing Iam Group to attach the policy permissions to"
  type        = string
  default     = "developers"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-1"
}
