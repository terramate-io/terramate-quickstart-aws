// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/ce7334a0-3c2c-443b-8d7c-eadf87019f13/terraform.tfstate"
    region         = "us-east-1"
  }
}
