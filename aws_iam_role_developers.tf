resource "aws_iam_role" "developer" {
  name               = "developer"
  description        = "This a role for permissions on codecommit repositories it should be attached to develoepr users"
  assume_role_policy = "${data.aws_iam_policy_document.restrictmaster.json}"
  tags               = "${local.common_tags}"
}
