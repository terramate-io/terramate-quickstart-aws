// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/7b41c982-d7c2-46e1-9fd7-cf9e61757350/terraform.tfstate"
    region         = "us-east-1"
  }
}
