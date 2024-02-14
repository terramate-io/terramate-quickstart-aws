// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/551c8fbe-db69-409b-81ca-315484a6b60e/terraform.tfstate"
    region         = "us-east-1"
  }
}
