// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/428aae8f-5f32-44dd-b211-433d8367837b/terraform.tfstate"
    region         = "us-east-1"
  }
}
