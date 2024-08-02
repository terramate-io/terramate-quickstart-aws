// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/e4e5d4fb-c62a-46f1-8242-89b9ce765c15/terraform.tfstate"
    region         = "us-east-1"
  }
}
