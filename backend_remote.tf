resource "local_file" "terraform_backend" {
  filename = "${path.root}/remote_backend.hcl" # or "./remote_backend.hcl"
  content = templatefile("${path.module}/backend.template", {
    bucket         = "terraform-${data.aws_caller_identity.current.account_id}-${random_id.bucket_suffix.hex}"
    region         = var.region
    key            = "${random_id.bucket_suffix.hex}-terraform.tfstate"
    dynamodb_table = "terraform-lock-${data.aws_caller_identity.current.account_id}-${random_id.bucket_suffix.hex}"
  })
}