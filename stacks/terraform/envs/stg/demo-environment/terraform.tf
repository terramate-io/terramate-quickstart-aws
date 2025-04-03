// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  required_version = "1.11.0"
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.89"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 5.89"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}
provider "google" {
  region = "us-east-1"
}
