// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/1e9f8225-d4e8-4c2f-a126-84df340f0ef6/terraform.tfstate"
    region         = "us-east-1"
  }
}
