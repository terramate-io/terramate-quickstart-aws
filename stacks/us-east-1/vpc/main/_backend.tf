// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/6F9c219c-cb68-4cac-8753-d94336f565e7/terraform.tfstate"
    region         = "us-east-1"
  }
}
