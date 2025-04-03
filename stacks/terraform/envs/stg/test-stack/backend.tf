// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket       = "terramate-example-terraform-state-backend"
    encrypt      = true
    key          = "terraform/stacks/by-id/26d2f782-3157-4f90-98ff-fd5ac4495a04/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
