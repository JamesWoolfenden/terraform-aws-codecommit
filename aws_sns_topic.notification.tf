resource "aws_sns_topic" "notification" {
  name = "codecommit_${var.repository_name}"
}
