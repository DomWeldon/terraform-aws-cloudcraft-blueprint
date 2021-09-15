# Terraform CloudCraft Blueprint module

_Create a CloudCraft integration and blueprint using terraform._

This module uses the [CloudCraft terraform provider](https://github.com/KOTechnologiesLtd/terraform-provider-cloudcraft) created by KOTechnologiesLtd to automatically create an integration between CloudCraft and your current AWS account, and to create a blueprint inside your CloudCraft account which allows you to automatically create an AWS diagram using CloudCraft's live functionality.


## Installation

To use this module, include something like the below in your Tetrraform project code, perhaps in a file like `module-cloudcraft.tf`.
```hcl
module "cloudcraft" {
  // you should use a tagged version here
  source = "https://github.com/DomWeldon/terraform-aws-cloudcraft-blueprint"
  integration_name = "my-project-integration"
  blueprint_name = "my-project-blueprint"
}
```

Then: `terraform init` and `terraform apply`.

## Variables

| Variable Name      | Type   | Description                       | Required? | Default    |
|--------------------|--------|-----------------------------------|-----------|------------|
| `integration_name` | String | Name of integration with AWS      | Yes       |            |
| `blueprint_name`   | String | Name of blueprint for project     | Yes       |            |
| `blueprint_grid`   | String | Grid size for generated blueprint | No        | `standard` |
