// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket       = "terramate-example-terraform-state-backend"
    encrypt      = true
    key          = "terraform/stacks/by-id/d728202e-00ec-428d-b698-6b595da24ec4/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
