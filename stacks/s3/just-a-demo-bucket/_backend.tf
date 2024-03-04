// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/cbc7df1c-3d55-49d4-97fc-17b58ae4ec81/terraform.tfstate"
    region         = "us-east-1"
  }
}
