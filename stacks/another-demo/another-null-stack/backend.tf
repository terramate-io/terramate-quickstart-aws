// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/6679bd50-75f2-40e5-b2b3-1d047a23848b/terraform.tfstate"
    region         = "us-east-1"
  }
}
