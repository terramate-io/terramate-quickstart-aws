// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/12f6077c-3e2b-4f9a-8c6b-30062e19596e/terraform.tfstate"
    region         = "us-east-1"
  }
}
