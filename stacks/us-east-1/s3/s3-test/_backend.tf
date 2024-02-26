// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/26cebaa0-9165-4e81-81bd-8625eeae6db3/terraform.tfstate"
    region         = "us-east-1"
  }
}
