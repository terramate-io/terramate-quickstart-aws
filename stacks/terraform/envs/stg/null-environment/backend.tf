// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket       = "terramate-example-terraform-state-backend"
    encrypt      = true
    key          = "terraform/stacks/by-id/845b0540-d5da-413d-bf85-69f6db007ed0/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
