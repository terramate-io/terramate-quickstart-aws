// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket       = "terramate-example-terraform-state-backend"
    encrypt      = true
    key          = "terraform/stacks/by-id/0316e152-3362-4c4e-9705-0f8585ab5580/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
