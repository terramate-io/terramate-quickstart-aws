// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/6bba252a-e9c3-431a-9d7d-70403803e2ea/terraform.tfstate"
    region         = "us-east-1"
  }
}
