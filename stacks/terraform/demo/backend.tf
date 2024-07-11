// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/ef7a7cc6-3b0c-49a8-b480-aeaa49b2525c/terraform.tfstate"
    region         = "us-east-1"
  }
}
