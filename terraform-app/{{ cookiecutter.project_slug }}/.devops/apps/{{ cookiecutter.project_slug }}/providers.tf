provider "aws" {
  region = "{{ cookiecutter.aws_region }}"

  assume_role {
    role_arn     = local.iam_role_arn
    session_name = "default-session"
  }

  default_tags {
    tags = {
      "{{ cookiecutter.org_name }}-application"     = "{{ cookiecutter.project_repo }}"
      "{{ cookiecutter.org_name }}-environment"     = "TBD"
      "{{ cookiecutter.org_name }}-slack"           = "TBD"
      "{{ cookiecutter.org_name }}-cost-center"     = "TBD"
      "{{ cookiecutter.org_name }}-terraform"       = "true"
      "{{ cookiecutter.org_name }}-expiration-date" = "TBD"
    }
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
