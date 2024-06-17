// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/69b7547d-692b-4707-acbe-ed4be254c7af/terraform.tfstate"
    region         = "us-east-1"
  }
}
