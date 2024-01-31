// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/93b1851a-e583-4557-835c-bd9999a9713c/terraform.tfstate"
    region         = "us-east-1"
  }
}
