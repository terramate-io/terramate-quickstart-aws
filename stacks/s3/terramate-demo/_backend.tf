// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/21d4b94c-a9a2-4b3a-afda-493fd9719dd2/terraform.tfstate"
    region         = "us-east-1"
  }
}
