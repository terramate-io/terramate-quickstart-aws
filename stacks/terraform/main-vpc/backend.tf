// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/8c1cbe39-c47b-410c-8386-b325b9f2fad4/terraform.tfstate"
    region         = "us-east-1"
  }
}
