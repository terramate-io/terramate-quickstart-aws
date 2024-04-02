// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/d3d6da9c-d131-4c0b-84ca-63f8dd702250/terraform.tfstate"
    region         = "us-east-1"
  }
}
