# Terraform CloudCraft Blueprint module

_Create a CloudCraft integration and blueprint using terraform._

This module uses the [CloudCraft terraform provider](https://github.com/KOTechnologiesLtd/terraform-provider-cloudcraft) created by KOTechnologiesLtd to automatically create an integration between CloudCraft and your current AWS account, and to create a blueprint inside your CloudCraft account which allows you to automatically create an AWS diagram using CloudCraft's live functionality.


## Installation

To use this module, include something like the below in your Tetrraform project code, perhaps in a file like `module-cloudcraft.tf`.
```hcl
module "cloudcraft" {
  // you should use a tagged version here
  source = "git@github.com:DomWeldon/terraform-aws-cloudcraft-blueprint.git?ref=tags/v0.1.1"
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


## Credentials: using CloudCraft provider

You must specify a set of credentials for the CloudCraft provider to be able to talk to the CloudCraft API. These can be specified as environment variables using something like the below [in your `.envrc`](https://direnv.net/) or similar.

```bash
export CLOUDCRAFT_APITOKEN=your-api-token
export CLOUDCRAFT_HOST=api.cloudcraft.co
```

They can also be specified using the provider variable syntax in your `providers.tf` or `terraform.tf`, but since you will probably commit your Terraform config to a version control system like git, and since these credentials are secret, that is not recommended.

## Resources: what does this module do?

The module will create the following:

* An IAM role with ReadOnlyAccess permissions for CloudCraft to use.
* An AWS integration in CloudCraft, allowing it to view resources in this account.
* A CloudCraft blueprint which you can then use this integration with.


## Future Ideas

* Allow 0 or more blueprints to be created, rather than just one.
