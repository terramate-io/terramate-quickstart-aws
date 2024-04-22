// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/df307956-cf80-4621-ab63-124a90cc65d1/terraform.tfstate"
    region         = "us-east-1"
  }
}
