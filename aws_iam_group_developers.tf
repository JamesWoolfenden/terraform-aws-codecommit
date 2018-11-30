resource "aws_iam_group" "developer" {
  name = "developer"
}

resource "aws_iam_group_policy_attachment" "restrict-attach" {
  group      = "${aws_iam_group.developer.name}"
  policy_arn = "${aws_iam_policy.restrictmaster.arn}"
}
