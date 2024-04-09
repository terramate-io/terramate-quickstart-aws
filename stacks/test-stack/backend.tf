// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/60d9ae69-7a59-43d3-bca2-d5329e8cb3dc/terraform.tfstate"
    region         = "us-east-1"
  }
}
