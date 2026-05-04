resource "aws_iam_policy" "restrictmaster" {
  # checkov:skip=CKV_AWS_290: IAM policy requires broad write access for this module to function
  # checkov:skip=CKV_AWS_355: IAM policy requires wildcard resource for this module to function
  count  = var.developer_group == "" ? 0 : 1
  policy = data.aws_iam_policy_document.restrictmaster.json
}
