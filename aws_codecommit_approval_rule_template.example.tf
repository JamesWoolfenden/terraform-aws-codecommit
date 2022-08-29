resource "aws_codecommit_approval_rule_template" "example" {
  name        = var.template.name
  description = var.template.description

  content = <<EOF
{
    "Version": "2018-11-08",
    "DestinationReferences": ["refs/heads/${var.default_branch}"],
    "Statements": [{
        "Type": "Approvers",
        "NumberOfApprovalsNeeded": 2,
        "ApprovalPoolMembers": ["${var.approver_role}"]
    }]
}
EOF
}


resource "aws_codecommit_approval_rule_template_association" "link" {
  approval_rule_template_name = aws_codecommit_approval_rule_template.example.name
  repository_name             = aws_codecommit_repository.repo.repository_name
}
