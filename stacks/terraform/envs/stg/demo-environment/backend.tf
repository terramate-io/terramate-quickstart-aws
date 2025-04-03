// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket       = "terramate-example-terraform-state-backend2"
    encrypt      = true
    key          = "terraform/stacks/by-id/32300e10-4255-4e0d-8267-482a4759dca6/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
