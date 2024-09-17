// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/883a9747-3dc2-42e8-bbbd-7c39f1b1ad14/terraform.tfstate"
    region         = "us-east-1"
  }
}
