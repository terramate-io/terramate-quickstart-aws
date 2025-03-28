// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket       = "terramate-example-terraform-state-backend"
    encrypt      = true
    key          = "terraform/stacks/by-id/0a592878-f56b-425e-a22d-f2b69caa64db/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
