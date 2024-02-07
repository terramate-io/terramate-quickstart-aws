// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/8ff80521-437e-47a5-8905-6e42c6b1aea3/terraform.tfstate"
    region         = "us-east-1"
  }
}
