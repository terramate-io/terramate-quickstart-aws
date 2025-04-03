// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket       = "terramate-example-terraform-state-backend"
    encrypt      = true
    key          = "terraform/stacks/by-id/4f31387f-16d0-46b6-ba11-b048ae3676b0/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
