// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/e48d8b2f-f7ee-4d7a-a3b3-e18177e30bfb/terraform.tfstate"
    region         = "us-east-1"
  }
}
