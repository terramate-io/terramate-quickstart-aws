// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terramate-example-terraform-state-backend"
    dynamodb_table = "terraform-lock"
    encrypt        = true
    key            = "terraform/stacks/by-id/17d480fc-fa48-4615-8e19-0028b8078405/terraform.tfstate"
    region         = "us-east-1"
  }
}
