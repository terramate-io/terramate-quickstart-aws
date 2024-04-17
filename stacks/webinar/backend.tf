// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/459accbd-140a-4efe-8988-a7c82981e621/terraform.tfstate"
    region         = "us-east-1"
  }
}
