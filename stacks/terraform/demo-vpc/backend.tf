// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/4fa564c7-8595-42f6-bdbb-5abd2ca0504c/terraform.tfstate"
    region         = "us-east-1"
  }
}
