module "codecommit" {
  source          = "../../"
  organization    = "${var.organization}"
  default_branch  = "${var.default_branch}"
  repository_name = "${var.repository_name}"
}
