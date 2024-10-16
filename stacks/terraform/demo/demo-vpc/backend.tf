// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/64ce170b-d7fe-4c46-b729-e1d7e97c2972/terraform.tfstate"
    region         = "us-east-1"
  }
}
