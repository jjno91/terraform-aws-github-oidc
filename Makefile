account := `aws sts get-caller-identity --query "Account" --output text`

apply: init import
	terraform apply

plan: init
	terraform plan

check:
	terraform validate
	terraform fmt -check -recursive

init:
	terraform init

import: init
	terraform import aws_iam_openid_connect_provider.this arn:aws:iam::$(account):oidc-provider/token.actions.githubusercontent.com || true