// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/ab3bf6ae-25cf-412b-b216-7bdb43333b05/terraform.tfstate"
    region         = "us-east-1"
  }
}
