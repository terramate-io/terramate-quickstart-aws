// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/53d8da29-6a1e-438b-9bcc-3ee08d0f9599/terraform.tfstate"
    region         = "us-east-1"
  }
}
