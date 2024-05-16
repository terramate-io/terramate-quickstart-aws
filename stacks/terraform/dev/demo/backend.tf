// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/020201a8-d0c6-4034-9f9c-98082b0c530c/terraform.tfstate"
    region         = "us-east-1"
  }
}
