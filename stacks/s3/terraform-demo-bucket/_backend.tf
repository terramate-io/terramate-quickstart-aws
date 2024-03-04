// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/c6df7b4f-de03-4b22-8a06-a6162acce676/terraform.tfstate"
    region         = "us-east-1"
  }
}
