module "codecommit" {
  source          = "../../"
  repository_name = "${var.repository_name}"
}
