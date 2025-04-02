// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket       = "terramate-example-terraform-state-backend"
    encrypt      = true
    key          = "terraform/stacks/by-id/3e21b6d8-0a47-4c91-8d45-1de488c8d3f0/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
