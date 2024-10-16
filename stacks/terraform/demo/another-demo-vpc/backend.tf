// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/18901925-525d-4d91-803d-8cd957be02e5/terraform.tfstate"
    region         = "us-east-1"
  }
}
