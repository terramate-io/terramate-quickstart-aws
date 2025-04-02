// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket       = "terramate-example-terraform-state-backend"
    encrypt      = true
    key          = "terraform/stacks/by-id/f21d1d7f-fdc3-4080-bbb5-773d2f6d7590/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
