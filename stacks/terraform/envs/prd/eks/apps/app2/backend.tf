// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket       = "terramate-example-terraform-state-backend"
    encrypt      = true
    key          = "terraform/stacks/by-id/52ce6f2c-28aa-4c9b-8a2b-5001883b0d9c/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
