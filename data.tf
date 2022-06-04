data "aws_iam_policy_document" "this" {
  statement {
    actions = ["sts:AssumeRoleWithWebIdentity"]

    principals {
      identifiers = [aws_iam_openid_connect_provider.this.arn]
      type        = "Federated"
    }

    condition {
      test     = "StringLike"
      values   = ["repo:${var.repo}"]
      variable = "token.actions.githubusercontent.com:sub"
    }
  }
}
