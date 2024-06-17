// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/3e87a8f0-f39f-4b3f-8098-241cb87ecf8b/terraform.tfstate"
    region         = "us-east-1"
  }
}
