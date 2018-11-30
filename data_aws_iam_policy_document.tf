data "aws_iam_policy_document" "restrictmaster" {
  statement {
    effect = "Deny"

    actions = [
      "codecommit:GitPush",
      "codecommit:DeleteBranch",
      "codecommit:PutFile",
      "codecommit:MergePullRequestByFastForward",
    ]

    #    resources = ["${aws_codecommit_repository.repo.arn}"]
    resources = ["arn:aws:codecommit:*:680235478471:*"]

    condition {
      test     = "StringEqualsIfExists"
      variable = "codecommit:References"
      values   = ["refs/heads/master", "refs/heads/prod"]
    }

    condition {
      test     = "Null"
      variable = "codecommit:References"
      values   = [false]
    }
  }
}
