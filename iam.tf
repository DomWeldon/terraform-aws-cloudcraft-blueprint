data "aws_iam_policy_document" "cloudcraft_integration" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]
    principals {
      type        = "AWS"
      identifiers = [local.cloudcraft_aws_account_id]
    }
  }
}

resource "aws_iam_role" "cloudcraft" {
  assume_role_policy = data.aws_iam_policy_document.cloudcraft_integration.json
  managed_policy_arns = [
    "arn:aws:iam::aws:policy/ReadOnlyAccess"
  ]
}
