// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/0febdf7e-e889-4a46-aa83-ccc4a0751360/terraform.tfstate"
    region         = "us-east-1"
  }
}
