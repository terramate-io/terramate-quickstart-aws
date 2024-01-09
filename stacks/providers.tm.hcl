# Will be added to all stacks
globals "terraform" "providers" "aws" {
  enabled = true
  source  = "hashicorp/aws"
  version = "~> 5.31"
  config = {
    region = "us-east-1"
  }
}
