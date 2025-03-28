// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/3a02cc43-c5d0-4327-b1e8-bf5f0ecd526b/terraform.tfstate"
    region         = "us-east-1"
  }
}
