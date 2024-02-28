// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/52927625-74fb-494f-924c-0b15dee32b19/terraform.tfstate"
    region         = "us-east-1"
  }
}
