// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/4514f3da-e809-45fd-a9c7-a17e3623e992/terraform.tfstate"
    region         = "us-east-1"
  }
}
