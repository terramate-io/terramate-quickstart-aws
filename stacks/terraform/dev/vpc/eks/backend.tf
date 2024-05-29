// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/d8f531f9-310f-448b-9016-af732c3c4825/terraform.tfstate"
    region         = "us-east-1"
  }
}
