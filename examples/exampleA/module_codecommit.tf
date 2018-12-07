module "codecommit" {
  source          = "JamesWoolfenden/codecommit/aws"
  version         = "0.0.4"
  organization    = "${var.organization}"
  default_branch  = "${var.default_branch}"
  repository_name = "${var.repository_name}"
}
