resource "aws_sns_topic" "notification" {
  name = "codecommit_${replace(var.repository_name, ".", "_")}"
}
