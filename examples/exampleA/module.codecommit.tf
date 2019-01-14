module "codecommit" {
  source          = "JamesWoolfenden/codecommit/aws"
  version         = "0.0.6"
  default_branch  = "${var.default_branch}"
  repository_name = "${var.repository_name}"
}
