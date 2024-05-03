// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/93e0c782-1635-48cd-8717-d0728438fbac/terraform.tfstate"
    region         = "us-east-1"
  }
}
