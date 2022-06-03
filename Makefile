init:
	terraform init

apply: init
	terraform apply -auto-approve