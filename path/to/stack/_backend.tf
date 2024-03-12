// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/AD391a6e-2c6d-4295-9b3c-102debb55920/terraform.tfstate"
    region         = "us-east-1"
  }
}
