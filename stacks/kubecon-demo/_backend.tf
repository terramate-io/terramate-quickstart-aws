// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/08926203-0c16-4fc9-b7b8-defbf8da2efb/terraform.tfstate"
    region         = "us-east-1"
  }
}
