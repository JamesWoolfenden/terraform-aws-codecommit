module "codecommit" {
  source            = "../../"
  repository_name   = var.repository_name
  approver_role     = "arn:aws:sts::${data.aws_caller_identity.current.account_id}:assumed-role/CodeCommitReview/*"
  kms_master_key_id = aws_kms_key.codecommit.arn
}
data "aws_caller_identity" "current" {}
