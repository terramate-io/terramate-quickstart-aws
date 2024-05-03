// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/ac1cbc21-a7d8-451e-a12e-f390bbcc1a51/terraform.tfstate"
    region         = "us-east-1"
  }
}
