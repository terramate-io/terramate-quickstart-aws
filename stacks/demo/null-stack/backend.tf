// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/0bf891c2-bc28-41e7-87d3-874e31e414f9/terraform.tfstate"
    region         = "us-east-1"
  }
}
