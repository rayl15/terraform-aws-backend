# terraform-aws-backend

This Terraform module creates an S3 bucket and a DynamoDB table to be used as a backend for storing remote Terraform state securely.

## Features

- Encrypted S3 bucket with KMS
- Secure DynamoDB table with point-in-time recovery
- Generates `remote_backend.hcl` file for backend configuration

## Usage

```hcl
module "terraform_backend" {
  source = "your-org/backend/aws"
  region = "us-west-2"
}
