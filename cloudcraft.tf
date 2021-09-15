resource "cloudcraft_integration_aws" "main" {
  name    = var.integration_name
  rolearn = aws_iam_role.cloudcraft.arn
}

resource "cloudcraft_blueprint" "main" {
  name = var.blueprint_name
  grid = var.blueprint_grid
}
