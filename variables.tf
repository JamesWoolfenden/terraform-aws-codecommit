variable "repository_name" {
  type        = string
  description = "The name of your GIT repository"
}

variable "default_branch" {
  type        = string
  description = "The name of the default repository branch"
  default     = "main"
}

variable "developer_group" {
  description = "An existing Iam Group to attach the policy permissions to"
  type        = string
  default     = ""
}

variable "kms_master_key_id" {
  type        = string
  description = "The kms key to use"
}

variable "approver_role" {
  type        = string
  description = "ARN of approver role"
}

variable "template" {
  default = {
    name        = "MyExampleApprovalRuleTemplate"
    description = "This is an example approval rule template"
    approvers   = 2
  }
}
