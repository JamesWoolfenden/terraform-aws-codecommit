resource "aws_codecommit_repository" "repo" {
  repository_name = "${var.repository_name}"
  description     = "${var.repository_name}"
  default_branch  = "${var.default_branch}"
}
