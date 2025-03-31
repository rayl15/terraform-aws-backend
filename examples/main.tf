provider "aws" {
  region = "us-west-2"
}

module "terraform_backend" {
  source = "../../" # use "your-org/backend/aws" after publish
  region = "us-west-2"
}
