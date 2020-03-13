resource "aws_sns_topic" "notification" {
  name              = "codecommit_${replace(var.repository_name, ".", "_")}"
  kms_master_key_id = var.kms_master_key_id
}
