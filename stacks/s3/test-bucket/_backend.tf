// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/aac3858a-931d-49cb-9516-d1bc0b852a9a/terraform.tfstate"
    region         = "us-east-1"
  }
}
