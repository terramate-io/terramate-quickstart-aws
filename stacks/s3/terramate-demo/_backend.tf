// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/42604676-3796-4d54-a90f-32219ca6cdc7/terraform.tfstate"
    region         = "us-east-1"
  }
}
