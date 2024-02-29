// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/4d91eda3-c6fe-4196-b60e-4bd1fda014ff/terraform.tfstate"
    region         = "us-east-1"
  }
}
