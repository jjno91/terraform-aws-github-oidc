variable "repo" {
  description = "https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/about-security-hardening-with-openid-connect#understanding-the-oidc-token"
  default     = "jjno91/*"
  type        = string
}

variable "thumbprint" {
  description = "You can retrieve this value from the IAM console"
  default     = "6938fd4d98bab03faadb97b34396831e3780aea1"
  type        = string
}

variable "managed_policy_arns" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role#managed_policy_arns"
  default     = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  type        = list(string)
}