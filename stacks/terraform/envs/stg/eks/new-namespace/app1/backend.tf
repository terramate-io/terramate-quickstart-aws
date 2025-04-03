// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket       = "terramate-example-terraform-state-backend"
    encrypt      = true
    key          = "terraform/stacks/by-id/31095951-3d75-4394-bb63-4d5dd65294ad/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
