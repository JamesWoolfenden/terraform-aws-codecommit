module "codecommit" {
  #source          = "JamesWoolfenden/codecommit/aws"
  source         = "../../"
  version        = "0.0.4"
  organization   = "${var.organization}"
  default_branch = "${var.default_branch}"
  repositoryname = "${var.repositoryname}"
}
