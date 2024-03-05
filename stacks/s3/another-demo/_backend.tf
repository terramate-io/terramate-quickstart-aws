// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/70299e2f-8bcc-4a7f-a767-f7d2429db546/terraform.tfstate"
    region         = "us-east-1"
  }
}
