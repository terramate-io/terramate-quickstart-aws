// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/0f87305d-e6d4-4087-8128-b33a6e80a8e8/terraform.tfstate"
    region         = "us-east-1"
  }
}
