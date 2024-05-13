// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/63f2e7fe-8f56-49d5-9ac1-6357f3e5399c/terraform.tfstate"
    region         = "us-east-1"
  }
}
