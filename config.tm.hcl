globals "terraform" {
  version = "1.6.6"
}

globals "terraform" "backend" {
  bucket = "terramate-example-terraform-state-backend"
  region = "us-east-1"
}

globals "terraform" "providers" "aws" {
  enabled = true
  source  = "hashicorp/aws"
  version = "~> 5.31"
  config = {
    region = "us-east-1"
  }
}
