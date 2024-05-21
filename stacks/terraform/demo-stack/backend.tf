// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/94ed5da5-0a0b-43ed-9d77-c7e8bb8adc53/terraform.tfstate"
    region         = "us-east-1"
  }
}
