// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/aa001d1f-b1fd-48a2-8e90-093331d4b6b3/terraform.tfstate"
    region         = "us-east-1"
  }
}
