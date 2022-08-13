locals {
  service_stage = terraform.workspace
  iam_role_arn  = "arn:aws:iam::{{ cookiecutter.aws_account_id }}:role/{{ cookiecutter.aws_gha_trusted_account_role }}"
}
