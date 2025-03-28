// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/0558df4e-b164-4579-8d91-0274952d88d3/terraform.tfstate"
    region         = "us-east-1"
  }
}
