# cookiecutter-base

## Generic Application Basic

## Terraform Application

## Terraform Module

## Useful commands

```bash
export REPLAY_FOLDER="./replay-files/sample-project"
cookiecutter gh:httpdss/cookiecutter-base \
  --replay-file="$REPLAY_FOLDER/generic-app-basic.json"  \
  --directory=generic-app-basic \
  -o .
cookiecutter gh:httpdss/cookiecutter-base \
  --replay-file="$REPLAY_FOLDER/terraform-app.json"  \
  --directory=terraform-app \
  -o .
```
