// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/60382f36-80e1-4395-b732-b66ea9abe4f8/terraform.tfstate"
    region         = "us-east-1"
  }
}