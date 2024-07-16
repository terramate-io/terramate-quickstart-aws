// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/951f157c-88c1-41be-b6db-4d61ff706926/terraform.tfstate"
    region         = "us-east-1"
  }
}
