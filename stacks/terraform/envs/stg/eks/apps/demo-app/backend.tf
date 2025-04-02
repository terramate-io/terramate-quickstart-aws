// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket       = "terramate-example-terraform-state-backend"
    encrypt      = true
    key          = "terraform/stacks/by-id/689c676b-8e9b-47c7-aa25-9fd8794468e6/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
