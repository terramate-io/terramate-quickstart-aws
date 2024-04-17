// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/3b3920be-6aa1-4abd-97ca-f024910a2adf/terraform.tfstate"
    region         = "us-east-1"
  }
}
