// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket       = "terramate-example-terraform-state-backend"
    encrypt      = true
    key          = "terraform/stacks/by-id/106304bd-202f-493a-9b2e-37ef53def6bd/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
