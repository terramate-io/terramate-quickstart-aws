// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/cbda34b6-12d2-4415-b314-07bbe6241105/terraform.tfstate"
    region         = "us-east-1"
  }
}
