// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/7ac0960f-e8fa-471f-9013-8ef8433bf7b9/terraform.tfstate"
    region         = "us-east-1"
  }
}
