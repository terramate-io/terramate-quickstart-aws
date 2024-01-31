// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/43714ab3-3b83-4a7b-a997-b6caca345cd7/terraform.tfstate"
    region         = "us-east-1"
  }
}
