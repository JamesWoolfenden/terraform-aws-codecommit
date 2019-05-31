data "aws_iam_policy_document" "restrictmaster" {
  statement {
    effect = "Allow"

    actions = [
      "codecommit:*",
    ]

    resources = ["${aws_codecommit_repository.repo.arn}"]
  }

  statement {
    effect = "Deny"

    actions = [
      "codecommit:GitPush",
      "codecommit:DeleteBranch",
      "codecommit:PutFile",
      "codecommit:MergePullRequestByFastForward",
    ]

    resources = ["${aws_codecommit_repository.repo.arn}"]

    condition {
      test     = "StringEqualsIfExists"
      variable = "codecommit:References"
      values   = ["refs/heads/${var.default_branch}", "refs/heads/prod"]
    }

    condition {
      test     = "Null"
      variable = "codecommit:References"
      values   = [false]
    }
  }
}
