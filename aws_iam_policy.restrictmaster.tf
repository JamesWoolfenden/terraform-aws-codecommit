resource "aws_iam_policy" "restrictmaster" {
  policy = data.aws_iam_policy_document.restrictmaster.json
}
