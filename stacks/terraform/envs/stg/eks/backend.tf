// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/db0aac90-33e0-48e2-a5b1-5b680b8b2749/terraform.tfstate"
    region         = "us-east-1"
  }
}
