output "clone_url_https" {
  value = aws_codecommit_repository.repo.clone_url_http
}

output "clone_url_ssh" {
  value = aws_codecommit_repository.repo.clone_url_ssh
}
