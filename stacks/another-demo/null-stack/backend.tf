// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/f6c291ed-9afa-47c3-8f70-13273d294643/terraform.tfstate"
    region         = "us-east-1"
  }
}
