// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket       = "terramate-example-terraform-state-backend"
    encrypt      = true
    key          = "terraform/stacks/by-id/f0e291a3-d4e4-4537-b724-ac5f294ad41c/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
