// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/e83e9191-3d4a-4c96-9ddf-55a042076f2b/terraform.tfstate"
    region         = "us-east-1"
  }
}
