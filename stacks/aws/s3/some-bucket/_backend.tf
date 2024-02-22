// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/1b67a3ab-031e-4849-8c2a-5f6b0d855800/terraform.tfstate"
    region         = "us-east-1"
  }
}
