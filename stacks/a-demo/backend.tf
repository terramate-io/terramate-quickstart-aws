// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/85f47651-ca24-4e01-8921-18548316afc3/terraform.tfstate"
    region         = "us-east-1"
  }
}
