// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/18de6659-58fd-4a73-b195-01e04d7de740/terraform.tfstate"
    region         = "us-east-1"
  }
}
