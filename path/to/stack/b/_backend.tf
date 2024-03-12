// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/2829c4f6-6b3f-4760-84b8-71353a3c9d50/terraform.tfstate"
    region         = "us-east-1"
  }
}
