# aws region variable for terragrunt usage
variable "aws_region" {
  description = "aws region"
}

## Provider and backend definitions, This file shouldn't be modifed

provider "aws" {
  region = var.aws_region
}

terraform {
  # The configuration for this backend will be filled in by Terragrunt
  backend "s3" {}

  # The latest version of Terragrunt (v0.19.0 and above) requires Terraform 0.12.0 or above.
  required_version = ">= 0.12.0"
}

# output db instance resource
output "this_db_instance" {
  description = "The database resource"
  value       = module.db_instance.this_db_instance
}