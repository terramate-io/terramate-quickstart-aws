// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/2206cefc-4857-4917-ade0-4c6ac559c7dc/terraform.tfstate"
    region         = "us-east-1"
  }
}
