provider "aws" {
  region = "{{ cookiecutter.aws_region }}"
}

provider "github" {
  token = var.github_token
}

terraform {
  required_version = ">= {{ cookiecutter.terraform_version}}"
}
