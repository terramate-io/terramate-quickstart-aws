// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/027e88d1-41d2-4bcb-862b-3d381c0f1e13/terraform.tfstate"
    region         = "us-east-1"
  }
}
