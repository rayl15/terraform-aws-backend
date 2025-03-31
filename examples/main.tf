provider "aws" {
  region = "us-east-1"
}

module "backend" {
  source  = "rayl15/backend/aws"
  version = "1.2.0"
}