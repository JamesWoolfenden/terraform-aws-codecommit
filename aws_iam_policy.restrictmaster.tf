resource "aws_iam_policy" "restrictmaster" {
  count  = "${var.developer_group == "" ? 0 : 1}"
  policy = data.aws_iam_policy_document.restrictmaster.json
}
