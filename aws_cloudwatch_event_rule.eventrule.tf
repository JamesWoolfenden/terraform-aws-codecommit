resource "aws_cloudwatch_event_rule" "eventrule" {
  description = "An Amazon CloudWatch Event rule has been created by AWS CodeCommit for the following repository: ${aws_codecommit_repository.repo.arn}."

  is_enabled = true

  event_pattern = <<PATTERN
{
  "source": [
    "aws.codecommit"
  ],
  "resources": [
    "${aws_codecommit_repository.repo.arn}"
  ],
  "detail-type": [
    "CodeCommit Pull Request State Change",
    "CodeCommit Comment on Pull Request",
    "CodeCommit Comment on Commit"
  ]
}
PATTERN
}
