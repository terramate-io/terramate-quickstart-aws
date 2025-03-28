// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket       = "terramate-example-terraform-state-backend"
    encrypt      = true
    key          = "opentofu/stacks/by-id/f50a9ef3-c5de-48ab-8acf-a60d91bfef7b/opentofu.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
