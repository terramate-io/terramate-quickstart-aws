// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket       = "terramate-example-terraform-state-backend"
    encrypt      = true
    key          = "terraform/stacks/by-id/80d21500-07a3-4bb5-b3f7-e92bfd642ad9/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
