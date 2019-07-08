resource "aws_iam_group_policy_attachment" "restrict-attach" {
  count      = "${var.developer_group == "" ? 0 : 1}"
  group      = var.developer_group
  policy_arn = aws_iam_policy.restrictmaster.0.arn
}
