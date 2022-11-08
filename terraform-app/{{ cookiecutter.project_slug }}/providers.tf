provider "aws" {
  region = "{{ cookiecutter.aws_region }}"

  assume_role {
    role_arn     = local.iam_role_arn
    session_name = "${local.service_stage}-init-session"
  }
}

terraform {
  required_version = ">= {{ cookiecutter.terraform_version}}"

  backend "s3" {
    bucket         = "{{ cookiecutter.remote_backend_account_id }}-tf-backend"
    key            = "{{ cookiecutter.project_repo}}/{{ cookiecutter.project_slug }}/terraform.tfstate"
    region         = "{{ cookiecutter.aws_region }}"
    role_arn       = "arn:aws:iam::{{ cookiecutter.remote_backend_account_id }}:role/{{ cookiecutter.remote_backend_role_name }}"
    session_name   = "backend-session"
    dynamodb_table = "{{ cookiecutter.remote_backend_account_id }}-tf-backend"
  }
}
