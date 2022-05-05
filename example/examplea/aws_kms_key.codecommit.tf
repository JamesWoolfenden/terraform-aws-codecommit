
resource "aws_kms_key" "codecommit" {
  enable_key_rotation = true
}
