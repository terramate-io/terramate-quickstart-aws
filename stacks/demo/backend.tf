// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/aaa4636b-9585-4d92-9e48-fd5f9f850896/terraform.tfstate"
    region         = "us-east-1"
  }
}
