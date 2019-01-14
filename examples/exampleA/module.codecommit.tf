module "codecommit" {
  source          = "../../"
  default_branch  = "${var.default_branch}"
  repository_name = "${var.repository_name}"
  developer_group = "${var.developer_group}"
  depends_on      = ["${aws_iam_group.developer.group_name}"]
}
