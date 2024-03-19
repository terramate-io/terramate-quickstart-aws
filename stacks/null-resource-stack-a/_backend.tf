// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/c635db87-e6ec-4b65-ae38-0e923647d091/terraform.tfstate"
    region         = "us-east-1"
  }
}
