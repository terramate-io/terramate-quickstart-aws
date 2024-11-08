// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/2528cc5e-53cd-4ad9-8452-cdf044b2c162/terraform.tfstate"
    region         = "us-east-1"
  }
}
