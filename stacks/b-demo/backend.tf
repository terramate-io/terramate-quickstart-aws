// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/34ecbd16-b3c9-44ef-92a4-2cf88fd94eac/terraform.tfstate"
    region         = "us-east-1"
  }
}
