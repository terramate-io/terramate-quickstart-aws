// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/4a848091-0d90-4f0c-9e21-ec5d84493bc1/terraform.tfstate"
    region         = "us-east-1"
  }
}
