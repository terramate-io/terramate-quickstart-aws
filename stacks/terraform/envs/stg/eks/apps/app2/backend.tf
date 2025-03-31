// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket       = "terramate-example-terraform-state-backend"
    encrypt      = true
    key          = "terraform/stacks/by-id/48c67f9a-f7d7-4d81-9815-90991878b397/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
