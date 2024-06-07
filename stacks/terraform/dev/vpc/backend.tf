// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/3005c8c1-b001-4952-85f3-21e41bba634a/terraform.tfstate"
    region         = "us-east-1"
  }
}
