// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/785edb7b-98ce-4139-a875-afcfe11743d2/terraform.tfstate"
    region         = "us-east-1"
  }
}
