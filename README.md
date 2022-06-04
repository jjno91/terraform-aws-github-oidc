# terraform-aws-github-oidc

https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/configuring-openid-connect-in-azure
https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/about-security-hardening-with-openid-connect#understanding-the-oidc-token

# Usage

The Makefile in this repository can operate without a Terraform backend. Simply run `make` in the root of this
repository from any AWS account.

# Caution - Branch Restrictions

When you use the OIDC config to restrict access to a specific branch this does not prevent users from re-running old
jobs. You must force a checkout to the head of the branch in your workflow to prevent old commits of code from attaining
AWS credentials.
