// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/8cd5f8c9-a426-4b7c-bf00-565f846eb00d/terraform.tfstate"
    region         = "us-east-1"
  }
}
