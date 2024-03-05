// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/70c3c5ae-0bb3-4721-8c76-9c2bc9a1599f/terraform.tfstate"
    region         = "us-east-1"
  }
}
