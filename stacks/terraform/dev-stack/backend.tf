// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/ce51dac1-716c-4f00-b2ce-a26a3dbef59a/terraform.tfstate"
    region         = "us-east-1"
  }
}
