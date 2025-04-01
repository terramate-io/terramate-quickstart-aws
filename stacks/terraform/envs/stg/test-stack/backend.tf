// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket       = "terramate-example-terraform-state-backend"
    encrypt      = true
    key          = "terraform/stacks/by-id/01651669-1566-4a47-a7cc-a78e069152c5/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
