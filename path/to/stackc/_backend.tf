// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/684ea003-1ecc-4b9f-b507-6cd7a50f9378/terraform.tfstate"
    region         = "us-east-1"
  }
}
