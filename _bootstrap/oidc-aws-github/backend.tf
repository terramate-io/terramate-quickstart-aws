// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/7d22b8e6-0e02-4815-995b-1cd34c826c95/terraform.tfstate"
    region         = "us-east-1"
  }
}
