// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/6d7c4902-6b40-4118-8bb9-2a684310f6d9/terraform.tfstate"
    region         = "us-east-1"
  }
}
