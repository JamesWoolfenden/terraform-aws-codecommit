resource "aws_codecommit_repository" "repo" {
  repository_name = "${var.repositoryname}"
  description     = "${var.repositoryname}"
  default_branch  = "${var.default_branch}"
}
