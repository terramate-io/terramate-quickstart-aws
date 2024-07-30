// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/f0be5e58-7c1c-4088-9304-741e65f2e553/terraform.tfstate"
    region         = "us-east-1"
  }
}
