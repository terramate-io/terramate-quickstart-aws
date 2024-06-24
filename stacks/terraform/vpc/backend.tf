// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/639d99de-abe3-4f53-9fee-e2a1a0d1844d/terraform.tfstate"
    region         = "us-east-1"
  }
}
