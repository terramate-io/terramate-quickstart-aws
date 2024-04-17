// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/f56bdb70-cb13-4939-80ea-a37b1b02d6ea/terraform.tfstate"
    region         = "us-east-1"
  }
}
