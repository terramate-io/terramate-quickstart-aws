// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/6c6ef185-ad58-4188-aec4-a71490f4a9de/terraform.tfstate"
    region         = "us-east-1"
  }
}
