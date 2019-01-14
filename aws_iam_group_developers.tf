resource "aws_iam_group_policy_attachment" "restrict-attach" {
  group      = "${var.developer_group}"
  policy_arn = "${aws_iam_policy.restrictmaster.arn}"
}
