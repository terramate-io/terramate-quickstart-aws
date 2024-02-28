// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/8c784e65-9589-4987-b6aa-bb16d8a60631/terraform.tfstate"
    region         = "us-east-1"
  }
}
