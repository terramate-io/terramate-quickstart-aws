// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/59b46d92-ad59-4d2f-93f9-24a020c82604/terraform.tfstate"
    region         = "us-east-1"
  }
}
