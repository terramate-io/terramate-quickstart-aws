// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/a5007b91-7993-4624-810a-f5c6d8f558c6/terraform.tfstate"
    region         = "us-east-1"
  }
}
