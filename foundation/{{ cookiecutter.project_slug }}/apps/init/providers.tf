provider "aws" {
  region = "{{ cookiecutter.aws_region }}"
  assume_role {
    role_arn     = local.iam_role_arn
    session_name = "${local.service_stage}-init-session"
  }
}

terraform {
  required_version = ">= {{ terraform_version}}"

  backend "s3" {
    bucket         = "{{ cookiecutter.aws_account_id }}-tf-backend"
    key            = "{{ cookiecutter.project_slug}}/init/terraform.tfstate"
    region         = "{{ cookiecutter.aws_region }}"
    role_arn       = "arn:aws:iam::{{ cookiecutter.aws_account_id }}:role/gha_trusting_account_role"
    session_name   = "backend-session"
    dynamodb_table = "{{ cookiecutter.aws_account_id }}-tf-backend"
  }
}
