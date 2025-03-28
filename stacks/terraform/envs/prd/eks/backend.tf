// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket       = "terramate-example-terraform-state-backend"
    encrypt      = true
    key          = "terraform/stacks/by-id/9ca87b75-eb50-4f8a-9530-221fc607f235/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
