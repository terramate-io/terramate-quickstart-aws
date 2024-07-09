// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/45d8f6a3-e905-4d8f-ad42-b644ee12c045/terraform.tfstate"
    region         = "us-east-1"
  }
}
