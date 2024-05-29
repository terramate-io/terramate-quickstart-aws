// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/f0f5c06c-6ce6-489a-b58a-189a084a0c00/terraform.tfstate"
    region         = "us-east-1"
  }
}
