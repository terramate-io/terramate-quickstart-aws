// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/f9ebfba0-9792-4fb9-8e9e-ec1450938b59/terraform.tfstate"
    region         = "us-east-1"
  }
}
