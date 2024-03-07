// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/a3af406d-eca8-42a7-be9e-18b522f22294/terraform.tfstate"
    region         = "us-east-1"
  }
}
