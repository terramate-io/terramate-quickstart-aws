// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/fe5aa482-ad46-4c1d-ba53-dbb827db44d5/terraform.tfstate"
    region         = "us-east-1"
  }
}
