// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/e5cada27-c50c-4768-b325-5b1e88cba40d/terraform.tfstate"
    region         = "us-east-1"
  }
}
