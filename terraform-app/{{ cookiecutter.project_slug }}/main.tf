locals {
  service_stage = terraform.workspace
  iam_role_arn  = "arn:aws:iam::{{ cookiecutter.assume_role_account_id }}:role/{{ cookiecutter.assume_role_name }}"
}
