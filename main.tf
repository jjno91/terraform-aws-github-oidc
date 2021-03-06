resource "aws_iam_openid_connect_provider" "this" {
  url             = "https://token.actions.githubusercontent.com"
  client_id_list  = ["sts.amazonaws.com"]
  thumbprint_list = [var.thumbprint]
}

resource "aws_iam_role" "this" {
  name                = "github"
  managed_policy_arns = var.managed_policy_arns
  assume_role_policy  = data.aws_iam_policy_document.this.json
}
